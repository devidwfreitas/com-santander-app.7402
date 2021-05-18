import java.io.InputStream;
import java.io.OutputStream;

final class bov extends InputStream {
  final InputStream a;
  
  final OutputStream b;
  
  bov(InputStream paramInputStream, OutputStream paramOutputStream) {
    this.a = paramInputStream;
    this.b = paramOutputStream;
  }
  
  public int available() {
    return this.a.available();
  }
  
  public void close() {
    try {
      this.a.close();
      return;
    } finally {
      this.b.close();
    } 
  }
  
  public void mark(int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  public boolean markSupported() {
    return false;
  }
  
  public int read() {
    int i = this.a.read();
    if (i >= 0)
      this.b.write(i); 
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte) {
    int i = this.a.read(paramArrayOfbyte);
    if (i > 0)
      this.b.write(paramArrayOfbyte, 0, i); 
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    paramInt2 = this.a.read(paramArrayOfbyte, paramInt1, paramInt2);
    if (paramInt2 > 0)
      this.b.write(paramArrayOfbyte, paramInt1, paramInt2); 
    return paramInt2;
  }
  
  public void reset() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new java/lang/UnsupportedOperationException
    //   5: dup
    //   6: invokespecial <init> : ()V
    //   9: athrow
    //   10: astore_1
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_1
    //   14: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	10	finally
  }
  
  public long skip(long paramLong) {
    byte[] arrayOfByte = new byte[1024];
    long l = 0L;
    while (true) {
      if (l < paramLong) {
        int i = read(arrayOfByte, 0, (int)Math.min(paramLong - l, arrayOfByte.length));
        if (i >= 0) {
          l += i;
          continue;
        } 
      } 
      return l;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */