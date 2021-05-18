import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class dqw {
  private final ByteBuffer a;
  
  private dqw(ByteBuffer paramByteBuffer) {
    this.a = paramByteBuffer;
    this.a.order(ByteOrder.LITTLE_ENDIAN);
  }
  
  private dqw(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    this(ByteBuffer.wrap(paramArrayOfbyte, paramInt1, paramInt2));
  }
  
  private static int a(CharSequence paramCharSequence) {
    int k;
    int m = paramCharSequence.length();
    int i;
    for (i = 0; i < m && paramCharSequence.charAt(i) < ''; i++);
    int j = i;
    i = m;
    while (true) {
      k = i;
      if (j < m) {
        k = paramCharSequence.charAt(j);
        if (k < 2048) {
          j++;
          i = (127 - k >>> 31) + i;
          continue;
        } 
        k = i + a(paramCharSequence, j);
      } 
      break;
    } 
    if (k < m) {
      long l = k;
      throw new IllegalArgumentException((new StringBuilder(54)).append("UTF-8 length does not fit in int: ").append(l + 4294967296L).toString());
    } 
    return k;
  }
  
  private static int a(CharSequence paramCharSequence, int paramInt) {
    int j = paramCharSequence.length();
    int i = 0;
    while (paramInt < j) {
      int k;
      char c = paramCharSequence.charAt(paramInt);
      if (c < 'ࠀ') {
        i += 127 - c >>> 31;
        k = paramInt;
      } else {
        int m = i + 2;
        k = paramInt;
        i = m;
        if ('?' <= c) {
          k = paramInt;
          i = m;
          if (c <= '?') {
            if (Character.codePointAt(paramCharSequence, paramInt) < 65536)
              throw new IllegalArgumentException((new StringBuilder(39)).append("Unpaired surrogate at index ").append(paramInt).toString()); 
            k = paramInt + 1;
            i = m;
          } 
        } 
      } 
      paramInt = k + 1;
    } 
    return i;
  }
  
  private static int a(CharSequence paramCharSequence, byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int j = paramCharSequence.length();
    int i = 0;
    int k = paramInt1 + paramInt2;
    paramInt2 = i;
    while (paramInt2 < j && paramInt2 + paramInt1 < k) {
      i = paramCharSequence.charAt(paramInt2);
      if (i < 128) {
        paramArrayOfbyte[paramInt1 + paramInt2] = (byte)i;
        paramInt2++;
      } 
    } 
    if (paramInt2 == j)
      return paramInt1 + j; 
    paramInt1 += paramInt2;
    while (paramInt2 < j) {
      char c = paramCharSequence.charAt(paramInt2);
      if (c < '' && paramInt1 < k) {
        i = paramInt1 + 1;
        paramArrayOfbyte[paramInt1] = (byte)c;
        paramInt1 = i;
      } else if (c < 'ࠀ' && paramInt1 <= k - 2) {
        i = paramInt1 + 1;
        paramArrayOfbyte[paramInt1] = (byte)(c >>> 6 | 0x3C0);
        paramInt1 = i + 1;
        paramArrayOfbyte[i] = (byte)(c & 0x3F | 0x80);
      } else if ((c < '?' || '?' < c) && paramInt1 <= k - 3) {
        i = paramInt1 + 1;
        paramArrayOfbyte[paramInt1] = (byte)(c >>> 12 | 0x1E0);
        int m = i + 1;
        paramArrayOfbyte[i] = (byte)(c >>> 6 & 0x3F | 0x80);
        paramInt1 = m + 1;
        paramArrayOfbyte[m] = (byte)(c & 0x3F | 0x80);
      } else if (paramInt1 <= k - 4) {
        char c1;
        i = paramInt2;
        if (paramInt2 + 1 != paramCharSequence.length()) {
          c1 = paramCharSequence.charAt(++paramInt2);
          if (!Character.isSurrogatePair(c, c1)) {
            i = paramInt2;
            throw new IllegalArgumentException((new StringBuilder(39)).append("Unpaired surrogate at index ").append(i - 1).toString());
          } 
        } else {
          throw new IllegalArgumentException((new StringBuilder(39)).append("Unpaired surrogate at index ").append(i - 1).toString());
        } 
        i = Character.toCodePoint(c, c1);
        int m = paramInt1 + 1;
        paramArrayOfbyte[paramInt1] = (byte)(i >>> 18 | 0xF0);
        paramInt1 = m + 1;
        paramArrayOfbyte[m] = (byte)(i >>> 12 & 0x3F | 0x80);
        m = paramInt1 + 1;
        paramArrayOfbyte[paramInt1] = (byte)(i >>> 6 & 0x3F | 0x80);
        paramInt1 = m + 1;
        paramArrayOfbyte[m] = (byte)(i & 0x3F | 0x80);
      } else {
        throw new ArrayIndexOutOfBoundsException((new StringBuilder(37)).append("Failed writing ").append(c).append(" at index ").append(paramInt1).toString());
      } 
      paramInt2++;
    } 
    return paramInt1;
  }
  
  public static dqw a(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public static dqw a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    return new dqw(paramArrayOfbyte, paramInt1, paramInt2);
  }
  
  private static void a(CharSequence paramCharSequence, ByteBuffer paramByteBuffer) {
    BufferOverflowException bufferOverflowException;
    if (paramByteBuffer.isReadOnly())
      throw new ReadOnlyBufferException(); 
    if (paramByteBuffer.hasArray())
      try {
        paramByteBuffer.position(a(paramCharSequence, paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), paramByteBuffer.remaining()) - paramByteBuffer.arrayOffset());
        return;
      } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
        bufferOverflowException = new BufferOverflowException();
        bufferOverflowException.initCause(arrayIndexOutOfBoundsException);
        throw bufferOverflowException;
      }  
    b((CharSequence)arrayIndexOutOfBoundsException, (ByteBuffer)bufferOverflowException);
  }
  
  public static int b(int paramInt, double paramDouble) {
    return f(paramInt) + 8;
  }
  
  public static int b(int paramInt, float paramFloat) {
    return f(paramInt) + 4;
  }
  
  public static int b(int paramInt, dre paramdre) {
    return f(paramInt) * 2 + c(paramdre);
  }
  
  public static int b(int paramInt, String paramString) {
    return f(paramInt) + b(paramString);
  }
  
  public static int b(int paramInt, boolean paramBoolean) {
    return f(paramInt) + 1;
  }
  
  public static int b(int paramInt, byte[] paramArrayOfbyte) {
    return f(paramInt) + c(paramArrayOfbyte);
  }
  
  public static int b(String paramString) {
    int i = a(paramString);
    return i + h(i);
  }
  
  private static void b(CharSequence paramCharSequence, ByteBuffer paramByteBuffer) {
    int j = paramCharSequence.length();
    for (int i = 0; i < j; i++) {
      char c = paramCharSequence.charAt(i);
      if (c < '') {
        paramByteBuffer.put((byte)c);
      } else if (c < 'ࠀ') {
        paramByteBuffer.put((byte)(c >>> 6 | 0x3C0));
        paramByteBuffer.put((byte)(c & 0x3F | 0x80));
      } else if (c < '?' || '?' < c) {
        paramByteBuffer.put((byte)(c >>> 12 | 0x1E0));
        paramByteBuffer.put((byte)(c >>> 6 & 0x3F | 0x80));
        paramByteBuffer.put((byte)(c & 0x3F | 0x80));
      } else {
        char c1;
        int k = i;
        if (i + 1 != paramCharSequence.length()) {
          c1 = paramCharSequence.charAt(++i);
          if (!Character.isSurrogatePair(c, c1)) {
            k = i;
            throw new IllegalArgumentException((new StringBuilder(39)).append("Unpaired surrogate at index ").append(k - 1).toString());
          } 
        } else {
          throw new IllegalArgumentException((new StringBuilder(39)).append("Unpaired surrogate at index ").append(k - 1).toString());
        } 
        k = Character.toCodePoint(c, c1);
        paramByteBuffer.put((byte)(k >>> 18 | 0xF0));
        paramByteBuffer.put((byte)(k >>> 12 & 0x3F | 0x80));
        paramByteBuffer.put((byte)(k >>> 6 & 0x3F | 0x80));
        paramByteBuffer.put((byte)(k & 0x3F | 0x80));
      } 
    } 
  }
  
  public static int c(int paramInt) {
    return (paramInt >= 0) ? h(paramInt) : 10;
  }
  
  public static int c(int paramInt1, int paramInt2) {
    return f(paramInt1) + c(paramInt2);
  }
  
  public static int c(int paramInt, dre paramdre) {
    return f(paramInt) + d(paramdre);
  }
  
  public static int c(dre paramdre) {
    return paramdre.g();
  }
  
  public static int c(byte[] paramArrayOfbyte) {
    return h(paramArrayOfbyte.length) + paramArrayOfbyte.length;
  }
  
  public static int d(int paramInt) {
    return h(j(paramInt));
  }
  
  public static int d(int paramInt1, int paramInt2) {
    return f(paramInt1) + d(paramInt2);
  }
  
  public static int d(dre paramdre) {
    int i = paramdre.g();
    return i + h(i);
  }
  
  public static int e(int paramInt, long paramLong) {
    return f(paramInt) + e(paramLong);
  }
  
  public static int e(long paramLong) {
    return i(paramLong);
  }
  
  public static int f(int paramInt) {
    return h(drh.a(paramInt, 0));
  }
  
  public static int f(int paramInt, long paramLong) {
    return f(paramInt) + f(paramLong);
  }
  
  public static int f(long paramLong) {
    return i(paramLong);
  }
  
  public static int g(int paramInt, long paramLong) {
    return f(paramInt) + 8;
  }
  
  public static int g(long paramLong) {
    return i(k(paramLong));
  }
  
  public static int h(int paramInt) {
    return ((paramInt & 0xFFFFFF80) == 0) ? 1 : (((paramInt & 0xFFFFC000) == 0) ? 2 : (((0xFFE00000 & paramInt) == 0) ? 3 : (((0xF0000000 & paramInt) == 0) ? 4 : 5)));
  }
  
  public static int h(int paramInt, long paramLong) {
    return f(paramInt) + g(paramLong);
  }
  
  public static int i(long paramLong) {
    return ((0xFFFFFFFFFFFFFF80L & paramLong) == 0L) ? 1 : (((0xFFFFFFFFFFFFC000L & paramLong) == 0L) ? 2 : (((0xFFFFFFFFFFE00000L & paramLong) == 0L) ? 3 : (((0xFFFFFFFFF0000000L & paramLong) == 0L) ? 4 : (((0xFFFFFFF800000000L & paramLong) == 0L) ? 5 : (((0xFFFFFC0000000000L & paramLong) == 0L) ? 6 : (((0xFFFE000000000000L & paramLong) == 0L) ? 7 : (((0xFF00000000000000L & paramLong) == 0L) ? 8 : (((Long.MIN_VALUE & paramLong) == 0L) ? 9 : 10))))))));
  }
  
  public static int j(int paramInt) {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  public static long k(long paramLong) {
    return paramLong << 1L ^ paramLong >> 63L;
  }
  
  public int a() {
    return this.a.remaining();
  }
  
  public void a(byte paramByte) {
    if (!this.a.hasRemaining())
      throw new dqx(this.a.position(), this.a.limit()); 
    this.a.put(paramByte);
  }
  
  public void a(double paramDouble) {
    j(Double.doubleToLongBits(paramDouble));
  }
  
  public void a(float paramFloat) {
    i(Float.floatToIntBits(paramFloat));
  }
  
  public void a(int paramInt) {
    if (paramInt >= 0) {
      g(paramInt);
      return;
    } 
    h(paramInt);
  }
  
  public void a(int paramInt, double paramDouble) {
    e(paramInt, 1);
    a(paramDouble);
  }
  
  public void a(int paramInt, float paramFloat) {
    e(paramInt, 5);
    a(paramFloat);
  }
  
  public void a(int paramInt1, int paramInt2) {
    e(paramInt1, 0);
    a(paramInt2);
  }
  
  public void a(int paramInt, long paramLong) {
    e(paramInt, 0);
    a(paramLong);
  }
  
  public void a(int paramInt, dre paramdre) {
    e(paramInt, 2);
    b(paramdre);
  }
  
  public void a(int paramInt, String paramString) {
    e(paramInt, 2);
    a(paramString);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    e(paramInt, 0);
    a(paramBoolean);
  }
  
  public void a(int paramInt, byte[] paramArrayOfbyte) {
    e(paramInt, 2);
    b(paramArrayOfbyte);
  }
  
  public void a(long paramLong) {
    h(paramLong);
  }
  
  public void a(dre paramdre) {
    paramdre.a(this);
  }
  
  public void a(String paramString) {
    try {
      int i = h(paramString.length());
      if (i == h(paramString.length() * 3)) {
        int j = this.a.position();
        if (this.a.remaining() < i)
          throw new dqx(i + j, this.a.limit()); 
        this.a.position(j + i);
        a(paramString, this.a);
        int k = this.a.position();
        this.a.position(j);
        g(k - j - i);
        this.a.position(k);
        return;
      } 
    } catch (BufferOverflowException bufferOverflowException) {
      dqx dqx = new dqx(this.a.position(), this.a.limit());
      dqx.initCause(bufferOverflowException);
      throw dqx;
    } 
    g(a((CharSequence)bufferOverflowException));
    a((CharSequence)bufferOverflowException, this.a);
  }
  
  public void a(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    e(bool);
  }
  
  public void b() {
    if (a() != 0)
      throw new IllegalStateException("Did not write as much data as expected."); 
  }
  
  public void b(int paramInt) {
    g(j(paramInt));
  }
  
  public void b(int paramInt1, int paramInt2) {
    e(paramInt1, 0);
    b(paramInt2);
  }
  
  public void b(int paramInt, long paramLong) {
    e(paramInt, 0);
    b(paramLong);
  }
  
  public void b(long paramLong) {
    h(paramLong);
  }
  
  public void b(dre paramdre) {
    g(paramdre.f());
    paramdre.a(this);
  }
  
  public void b(byte[] paramArrayOfbyte) {
    g(paramArrayOfbyte.length);
    d(paramArrayOfbyte);
  }
  
  public void b(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (this.a.remaining() >= paramInt2) {
      this.a.put(paramArrayOfbyte, paramInt1, paramInt2);
      return;
    } 
    throw new dqx(this.a.position(), this.a.limit());
  }
  
  public void c(int paramInt, long paramLong) {
    e(paramInt, 1);
    c(paramLong);
  }
  
  public void c(long paramLong) {
    j(paramLong);
  }
  
  public void d(int paramInt, long paramLong) {
    e(paramInt, 0);
    d(paramLong);
  }
  
  public void d(long paramLong) {
    h(k(paramLong));
  }
  
  public void d(byte[] paramArrayOfbyte) {
    b(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public void e(int paramInt) {
    a((byte)paramInt);
  }
  
  public void e(int paramInt1, int paramInt2) {
    g(drh.a(paramInt1, paramInt2));
  }
  
  public void g(int paramInt) {
    while (true) {
      if ((paramInt & 0xFFFFFF80) == 0) {
        e(paramInt);
        return;
      } 
      e(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    } 
  }
  
  public void h(long paramLong) {
    while (true) {
      if ((0xFFFFFFFFFFFFFF80L & paramLong) == 0L) {
        e((int)paramLong);
        return;
      } 
      e((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7L;
    } 
  }
  
  public void i(int paramInt) {
    if (this.a.remaining() < 4)
      throw new dqx(this.a.position(), this.a.limit()); 
    this.a.putInt(paramInt);
  }
  
  public void j(long paramLong) {
    if (this.a.remaining() < 8)
      throw new dqx(this.a.position(), this.a.limit()); 
    this.a.putLong(paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */