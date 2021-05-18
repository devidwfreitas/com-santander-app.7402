package org.apache.commons.io.input;

import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;

public class ReversedLinesFileReader implements Closeable {
  private final int avoidNewlineSplitBufferSize;
  
  private final int blockSize;
  
  private final int byteDecrement;
  
  private ReversedLinesFileReader$FilePart currentFilePart;
  
  private final Charset encoding;
  
  private final byte[][] newLineSequences;
  
  private final RandomAccessFile randomAccessFile;
  
  private final long totalBlockCount;
  
  private final long totalByteLength;
  
  private boolean trailingNewlineOfFileSkipped = false;
  
  public ReversedLinesFileReader(File paramFile) {
    this(paramFile, 4096, Charset.defaultCharset().toString());
  }
  
  public ReversedLinesFileReader(File paramFile, int paramInt, String paramString) {
    this(paramFile, paramInt, Charsets.toCharset(paramString));
  }
  
  public ReversedLinesFileReader(File paramFile, int paramInt, Charset paramCharset) {
    this.blockSize = paramInt;
    this.encoding = paramCharset;
    this.randomAccessFile = new RandomAccessFile(paramFile, "r");
    this.totalByteLength = this.randomAccessFile.length();
    int i = (int)(this.totalByteLength % paramInt);
    if (i > 0) {
      this.totalBlockCount = this.totalByteLength / paramInt + 1L;
    } else {
      this.totalBlockCount = this.totalByteLength / paramInt;
      if (this.totalByteLength > 0L)
        i = paramInt; 
    } 
    this.currentFilePart = new ReversedLinesFileReader$FilePart(this, this.totalBlockCount, i, null, null);
    Charset charset = Charsets.toCharset(paramCharset);
    if (charset.newEncoder().maxBytesPerChar() == 1.0F) {
      this.byteDecrement = 1;
    } else if (charset == Charset.forName("UTF-8")) {
      this.byteDecrement = 1;
    } else if (charset == Charset.forName("Shift_JIS")) {
      this.byteDecrement = 1;
    } else if (charset == Charset.forName("UTF-16BE") || charset == Charset.forName("UTF-16LE")) {
      this.byteDecrement = 2;
    } else {
      if (charset == Charset.forName("UTF-16"))
        throw new UnsupportedEncodingException("For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)"); 
      throw new UnsupportedEncodingException("Encoding " + paramCharset + " is not supported yet (feel free to submit a patch)");
    } 
    this.newLineSequences = new byte[][] { "\r\n".getBytes(paramCharset), "\n".getBytes(paramCharset), "\r".getBytes(paramCharset) };
    this.avoidNewlineSplitBufferSize = (this.newLineSequences[0]).length;
  }
  
  public void close() {
    this.randomAccessFile.close();
  }
  
  public String readLine() {
    String str1 = ReversedLinesFileReader$FilePart.access$100(this.currentFilePart);
    while (str1 == null) {
      this.currentFilePart = ReversedLinesFileReader$FilePart.access$200(this.currentFilePart);
      if (this.currentFilePart != null)
        str1 = ReversedLinesFileReader$FilePart.access$100(this.currentFilePart); 
    } 
    String str2 = str1;
    if ("".equals(str1)) {
      str2 = str1;
      if (!this.trailingNewlineOfFileSkipped) {
        this.trailingNewlineOfFileSkipped = true;
        str2 = readLine();
      } 
    } 
    return str2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\ReversedLinesFileReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */