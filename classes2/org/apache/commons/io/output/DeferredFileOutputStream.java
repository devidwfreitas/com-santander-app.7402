package org.apache.commons.io.output;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

public class DeferredFileOutputStream extends ThresholdingOutputStream {
  private boolean closed = false;
  
  private OutputStream currentOutputStream;
  
  private final File directory;
  
  private ByteArrayOutputStream memoryOutputStream;
  
  private File outputFile;
  
  private final String prefix;
  
  private final String suffix;
  
  public DeferredFileOutputStream(int paramInt, File paramFile) {
    this(paramInt, paramFile, null, null, null);
  }
  
  private DeferredFileOutputStream(int paramInt, File paramFile1, String paramString1, String paramString2, File paramFile2) {
    super(paramInt);
    this.outputFile = paramFile1;
    this.memoryOutputStream = new ByteArrayOutputStream();
    this.currentOutputStream = this.memoryOutputStream;
    this.prefix = paramString1;
    this.suffix = paramString2;
    this.directory = paramFile2;
  }
  
  public DeferredFileOutputStream(int paramInt, String paramString1, String paramString2, File paramFile) {
    this(paramInt, null, paramString1, paramString2, paramFile);
    if (paramString1 == null)
      throw new IllegalArgumentException("Temporary file prefix is missing"); 
  }
  
  public void close() {
    super.close();
    this.closed = true;
  }
  
  public byte[] getData() {
    return (this.memoryOutputStream != null) ? this.memoryOutputStream.toByteArray() : null;
  }
  
  public File getFile() {
    return this.outputFile;
  }
  
  protected OutputStream getStream() {
    return this.currentOutputStream;
  }
  
  public boolean isInMemory() {
    return !isThresholdExceeded();
  }
  
  protected void thresholdReached() {
    if (this.prefix != null)
      this.outputFile = File.createTempFile(this.prefix, this.suffix, this.directory); 
    FileOutputStream fileOutputStream = new FileOutputStream(this.outputFile);
    this.memoryOutputStream.writeTo(fileOutputStream);
    this.currentOutputStream = fileOutputStream;
    this.memoryOutputStream = null;
  }
  
  public void writeTo(OutputStream paramOutputStream) {
    if (!this.closed)
      throw new IOException("Stream not closed"); 
    if (isInMemory()) {
      this.memoryOutputStream.writeTo(paramOutputStream);
      return;
    } 
    FileInputStream fileInputStream = new FileInputStream(this.outputFile);
    try {
      IOUtils.copy(fileInputStream, paramOutputStream);
      return;
    } finally {
      IOUtils.closeQuietly(fileInputStream);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\DeferredFileOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */