package org.apache.commons.io.filefilter;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import org.apache.commons.io.IOUtils;

public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
  private static final long serialVersionUID = -547733176983104172L;
  
  private final long byteOffset;
  
  private final byte[] magicNumbers;
  
  public MagicNumberFileFilter(String paramString) {
    this(paramString, 0L);
  }
  
  public MagicNumberFileFilter(String paramString, long paramLong) {
    if (paramString == null)
      throw new IllegalArgumentException("The magic number cannot be null"); 
    if (paramString.length() == 0)
      throw new IllegalArgumentException("The magic number must contain at least one byte"); 
    if (paramLong < 0L)
      throw new IllegalArgumentException("The offset cannot be negative"); 
    this.magicNumbers = paramString.getBytes();
    this.byteOffset = paramLong;
  }
  
  public MagicNumberFileFilter(byte[] paramArrayOfbyte) {
    this(paramArrayOfbyte, 0L);
  }
  
  public MagicNumberFileFilter(byte[] paramArrayOfbyte, long paramLong) {
    if (paramArrayOfbyte == null)
      throw new IllegalArgumentException("The magic number cannot be null"); 
    if (paramArrayOfbyte.length == 0)
      throw new IllegalArgumentException("The magic number must contain at least one byte"); 
    if (paramLong < 0L)
      throw new IllegalArgumentException("The offset cannot be negative"); 
    this.magicNumbers = new byte[paramArrayOfbyte.length];
    System.arraycopy(paramArrayOfbyte, 0, this.magicNumbers, 0, paramArrayOfbyte.length);
    this.byteOffset = paramLong;
  }
  
  public boolean accept(File paramFile) {
    Exception exception;
    if (paramFile != null && paramFile.isFile() && paramFile.canRead()) {
      try {
        byte[] arrayOfByte = new byte[this.magicNumbers.length];
        RandomAccessFile randomAccessFile = new RandomAccessFile(paramFile, "r");
      } catch (IOException iOException) {
        iOException = null;
        return false;
      } finally {
        exception = null;
      } 
    } else {
      return false;
    } 
    IOUtils.closeQuietly((Closeable)paramFile);
    throw exception;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(super.toString());
    stringBuilder.append("(");
    stringBuilder.append(new String(this.magicNumbers));
    stringBuilder.append(",");
    stringBuilder.append(this.byteOffset);
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\MagicNumberFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */