package org.apache.commons.io.input;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class NullInputStream extends InputStream {
  private boolean eof;
  
  private long mark = -1L;
  
  private final boolean markSupported;
  
  private long position;
  
  private long readlimit;
  
  private final long size;
  
  private final boolean throwEofException;
  
  public NullInputStream(long paramLong) {
    this(paramLong, true, false);
  }
  
  public NullInputStream(long paramLong, boolean paramBoolean1, boolean paramBoolean2) {
    this.size = paramLong;
    this.markSupported = paramBoolean1;
    this.throwEofException = paramBoolean2;
  }
  
  private int doEndOfFile() {
    this.eof = true;
    if (this.throwEofException)
      throw new EOFException(); 
    return -1;
  }
  
  public int available() {
    long l = this.size - this.position;
    return (l <= 0L) ? 0 : ((l > 2147483647L) ? Integer.MAX_VALUE : (int)l);
  }
  
  public void close() {
    this.eof = false;
    this.position = 0L;
    this.mark = -1L;
  }
  
  public long getPosition() {
    return this.position;
  }
  
  public long getSize() {
    return this.size;
  }
  
  public void mark(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield markSupported : Z
    //   6: ifne -> 24
    //   9: new java/lang/UnsupportedOperationException
    //   12: dup
    //   13: ldc 'Mark not supported'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_2
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_2
    //   23: athrow
    //   24: aload_0
    //   25: aload_0
    //   26: getfield position : J
    //   29: putfield mark : J
    //   32: aload_0
    //   33: iload_1
    //   34: i2l
    //   35: putfield readlimit : J
    //   38: aload_0
    //   39: monitorexit
    //   40: return
    // Exception table:
    //   from	to	target	type
    //   2	19	19	finally
    //   24	38	19	finally
  }
  
  public boolean markSupported() {
    return this.markSupported;
  }
  
  protected int processByte() {
    return 0;
  }
  
  protected void processBytes(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {}
  
  public int read() {
    if (this.eof)
      throw new IOException("Read after end of file"); 
    if (this.position == this.size)
      return doEndOfFile(); 
    this.position++;
    return processByte();
  }
  
  public int read(byte[] paramArrayOfbyte) {
    return read(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (this.eof)
      throw new IOException("Read after end of file"); 
    if (this.position == this.size)
      return doEndOfFile(); 
    this.position += paramInt2;
    int i = paramInt2;
    if (this.position > this.size) {
      i = paramInt2 - (int)(this.position - this.size);
      this.position = this.size;
    } 
    processBytes(paramArrayOfbyte, paramInt1, i);
    return i;
  }
  
  public void reset() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield markSupported : Z
    //   6: ifne -> 24
    //   9: new java/lang/UnsupportedOperationException
    //   12: dup
    //   13: ldc 'Mark not supported'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: athrow
    //   24: aload_0
    //   25: getfield mark : J
    //   28: lconst_0
    //   29: lcmp
    //   30: ifge -> 43
    //   33: new java/io/IOException
    //   36: dup
    //   37: ldc 'No position has been marked'
    //   39: invokespecial <init> : (Ljava/lang/String;)V
    //   42: athrow
    //   43: aload_0
    //   44: getfield position : J
    //   47: aload_0
    //   48: getfield mark : J
    //   51: aload_0
    //   52: getfield readlimit : J
    //   55: ladd
    //   56: lcmp
    //   57: ifle -> 107
    //   60: new java/io/IOException
    //   63: dup
    //   64: new java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial <init> : ()V
    //   71: ldc 'Marked position ['
    //   73: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: aload_0
    //   77: getfield mark : J
    //   80: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   83: ldc '] is no longer valid - passed the read limit ['
    //   85: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: aload_0
    //   89: getfield readlimit : J
    //   92: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   95: ldc ']'
    //   97: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual toString : ()Ljava/lang/String;
    //   103: invokespecial <init> : (Ljava/lang/String;)V
    //   106: athrow
    //   107: aload_0
    //   108: aload_0
    //   109: getfield mark : J
    //   112: putfield position : J
    //   115: aload_0
    //   116: iconst_0
    //   117: putfield eof : Z
    //   120: aload_0
    //   121: monitorexit
    //   122: return
    // Exception table:
    //   from	to	target	type
    //   2	19	19	finally
    //   24	43	19	finally
    //   43	107	19	finally
    //   107	120	19	finally
  }
  
  public long skip(long paramLong) {
    if (this.eof)
      throw new IOException("Skip after end of file"); 
    if (this.position == this.size)
      return doEndOfFile(); 
    this.position += paramLong;
    long l = paramLong;
    if (this.position > this.size) {
      l = this.position;
      long l1 = this.size;
      this.position = this.size;
      return paramLong - l - l1;
    } 
    return l;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\NullInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */