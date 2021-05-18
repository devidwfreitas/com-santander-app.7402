package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class ProxyInputStream extends FilterInputStream {
  public ProxyInputStream(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  protected void afterRead(int paramInt) {}
  
  public int available() {
    try {
      return super.available();
    } catch (IOException iOException) {
      handleIOException(iOException);
      return 0;
    } 
  }
  
  protected void beforeRead(int paramInt) {}
  
  public void close() {
    try {
      this.in.close();
      return;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return;
    } 
  }
  
  protected void handleIOException(IOException paramIOException) {
    throw paramIOException;
  }
  
  public void mark(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield in : Ljava/io/InputStream;
    //   6: iload_1
    //   7: invokevirtual mark : (I)V
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: astore_2
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_2
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	13	finally
  }
  
  public boolean markSupported() {
    return this.in.markSupported();
  }
  
  public int read() {
    byte b = 1;
    try {
      beforeRead(1);
      int i = this.in.read();
      if (i == -1)
        b = -1; 
      afterRead(b);
      return i;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return -1;
    } 
  }
  
  public int read(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte != null)
      try {
        int j = paramArrayOfbyte.length;
        beforeRead(j);
        j = this.in.read(paramArrayOfbyte);
        afterRead(j);
        return j;
      } catch (IOException iOException) {
        handleIOException(iOException);
        return -1;
      }  
    int i = 0;
    beforeRead(i);
    i = this.in.read((byte[])iOException);
    afterRead(i);
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    try {
      beforeRead(paramInt2);
      paramInt1 = this.in.read(paramArrayOfbyte, paramInt1, paramInt2);
      afterRead(paramInt1);
      return paramInt1;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return -1;
    } 
  }
  
  public void reset() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield in : Ljava/io/InputStream;
    //   6: invokevirtual reset : ()V
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: astore_1
    //   13: aload_0
    //   14: aload_1
    //   15: invokevirtual handleIOException : (Ljava/io/IOException;)V
    //   18: goto -> 9
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	12	java/io/IOException
    //   2	9	21	finally
    //   13	18	21	finally
  }
  
  public long skip(long paramLong) {
    try {
      return this.in.skip(paramLong);
    } catch (IOException iOException) {
      handleIOException(iOException);
      return 0L;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\ProxyInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */