package org.apache.commons.io.input;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class CharSequenceInputStream extends InputStream {
  private final ByteBuffer bbuf;
  
  private final CharBuffer cbuf;
  
  private final CharsetEncoder encoder;
  
  private int mark;
  
  public CharSequenceInputStream(CharSequence paramCharSequence, String paramString) {
    this(paramCharSequence, paramString, 2048);
  }
  
  public CharSequenceInputStream(CharSequence paramCharSequence, String paramString, int paramInt) {
    this(paramCharSequence, Charset.forName(paramString), paramInt);
  }
  
  public CharSequenceInputStream(CharSequence paramCharSequence, Charset paramCharset) {
    this(paramCharSequence, paramCharset, 2048);
  }
  
  public CharSequenceInputStream(CharSequence paramCharSequence, Charset paramCharset, int paramInt) {
    this.encoder = paramCharset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
    this.bbuf = ByteBuffer.allocate(paramInt);
    this.bbuf.flip();
    this.cbuf = CharBuffer.wrap(paramCharSequence);
    this.mark = -1;
  }
  
  private void fillBuffer() {
    this.bbuf.compact();
    CoderResult coderResult = this.encoder.encode(this.cbuf, this.bbuf, true);
    if (coderResult.isError())
      coderResult.throwException(); 
    this.bbuf.flip();
  }
  
  public int available() {
    return this.cbuf.remaining();
  }
  
  public void close() {}
  
  public void mark(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield cbuf : Ljava/nio/CharBuffer;
    //   7: invokevirtual position : ()I
    //   10: putfield mark : I
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: astore_2
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_2
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	16	finally
  }
  
  public boolean markSupported() {
    return true;
  }
  
  public int read() {
    while (true) {
      if (this.bbuf.hasRemaining())
        return this.bbuf.get() & 0xFF; 
      fillBuffer();
      if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining())
        return -1; 
    } 
  }
  
  public int read(byte[] paramArrayOfbyte) {
    return read(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    byte b1 = 0;
    byte b = -1;
    if (paramArrayOfbyte == null)
      throw new NullPointerException("Byte array is null"); 
    if (paramInt2 < 0 || paramInt1 + paramInt2 > paramArrayOfbyte.length)
      throw new IndexOutOfBoundsException("Array Size=" + paramArrayOfbyte.length + ", offset=" + paramInt1 + ", length=" + paramInt2); 
    if (paramInt2 == 0)
      return 0; 
    int i = b1;
    int j = paramInt1;
    int k = paramInt2;
    if (!this.bbuf.hasRemaining()) {
      j = b;
      if (this.cbuf.hasRemaining()) {
        k = paramInt2;
        j = paramInt1;
        i = b1;
      } else {
        return j;
      } 
    } 
    while (k > 0) {
      if (this.bbuf.hasRemaining()) {
        paramInt1 = Math.min(this.bbuf.remaining(), k);
        this.bbuf.get(paramArrayOfbyte, j, paramInt1);
        j += paramInt1;
        k -= paramInt1;
        i += paramInt1;
        continue;
      } 
      fillBuffer();
      if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining())
        break; 
    } 
    if (i == 0) {
      j = b;
      return this.cbuf.hasRemaining() ? i : j;
    } 
    return i;
  }
  
  public void reset() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mark : I
    //   6: iconst_m1
    //   7: if_icmpeq -> 27
    //   10: aload_0
    //   11: getfield cbuf : Ljava/nio/CharBuffer;
    //   14: aload_0
    //   15: getfield mark : I
    //   18: invokevirtual position : (I)Ljava/nio/Buffer;
    //   21: pop
    //   22: aload_0
    //   23: iconst_m1
    //   24: putfield mark : I
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   2	27	30	finally
  }
  
  public long skip(long paramLong) {
    int i;
    for (i = 0; paramLong > 0L && this.cbuf.hasRemaining(); i++) {
      this.cbuf.get();
      paramLong--;
    } 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\CharSequenceInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */