package org.apache.commons.io.input;

import java.io.InputStream;

public class BoundedInputStream extends InputStream {
  private final InputStream in;
  
  private long mark = -1L;
  
  private final long max;
  
  private long pos = 0L;
  
  private boolean propagateClose = true;
  
  public BoundedInputStream(InputStream paramInputStream) {
    this(paramInputStream, -1L);
  }
  
  public BoundedInputStream(InputStream paramInputStream, long paramLong) {
    this.max = paramLong;
    this.in = paramInputStream;
  }
  
  public int available() {
    return (this.max >= 0L && this.pos >= this.max) ? 0 : this.in.available();
  }
  
  public void close() {
    if (this.propagateClose)
      this.in.close(); 
  }
  
  public boolean isPropagateClose() {
    return this.propagateClose;
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
    //   11: aload_0
    //   12: getfield pos : J
    //   15: putfield mark : J
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: astore_2
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_2
    //   25: athrow
    // Exception table:
    //   from	to	target	type
    //   2	18	21	finally
  }
  
  public boolean markSupported() {
    return this.in.markSupported();
  }
  
  public int read() {
    if (this.max >= 0L && this.pos >= this.max)
      return -1; 
    int i = this.in.read();
    this.pos++;
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte) {
    return read(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    long l;
    if (this.max >= 0L && this.pos >= this.max)
      return -1; 
    if (this.max >= 0L) {
      l = Math.min(paramInt2, this.max - this.pos);
    } else {
      l = paramInt2;
    } 
    paramInt1 = this.in.read(paramArrayOfbyte, paramInt1, (int)l);
    if (paramInt1 == -1)
      return -1; 
    this.pos += paramInt1;
    return paramInt1;
  }
  
  public void reset() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield in : Ljava/io/InputStream;
    //   6: invokevirtual reset : ()V
    //   9: aload_0
    //   10: aload_0
    //   11: getfield mark : J
    //   14: putfield pos : J
    //   17: aload_0
    //   18: monitorexit
    //   19: return
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: athrow
    // Exception table:
    //   from	to	target	type
    //   2	17	20	finally
  }
  
  public void setPropagateClose(boolean paramBoolean) {
    this.propagateClose = paramBoolean;
  }
  
  public long skip(long paramLong) {
    long l = paramLong;
    if (this.max >= 0L)
      l = Math.min(paramLong, this.max - this.pos); 
    paramLong = this.in.skip(l);
    this.pos += paramLong;
    return paramLong;
  }
  
  public String toString() {
    return this.in.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\BoundedInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */