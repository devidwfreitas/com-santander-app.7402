public final class dqv {
  private final byte[] a;
  
  private int b;
  
  private int c;
  
  private int d;
  
  private int e;
  
  private int f;
  
  private int g = Integer.MAX_VALUE;
  
  private int h;
  
  private int i = 64;
  
  private int j = 67108864;
  
  private dqv(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    this.a = paramArrayOfbyte;
    this.b = paramInt1;
    this.c = paramInt1 + paramInt2;
    this.e = paramInt1;
  }
  
  public static long a(long paramLong) {
    return paramLong >>> 1L ^ -(0x1L & paramLong);
  }
  
  public static dqv a(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public static dqv a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    return new dqv(paramArrayOfbyte, paramInt1, paramInt2);
  }
  
  public static int c(int paramInt) {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }
  
  private void v() {
    this.c += this.d;
    int i = this.c;
    if (i > this.g) {
      this.d = i - this.g;
      this.c -= this.d;
      return;
    } 
    this.d = 0;
  }
  
  public int a() {
    if (s()) {
      this.f = 0;
      return 0;
    } 
    this.f = n();
    if (this.f == 0)
      throw drd.d(); 
    return this.f;
  }
  
  public void a(int paramInt) {
    if (this.f != paramInt)
      throw drd.e(); 
  }
  
  public void a(dre paramdre) {
    int i = n();
    if (this.h >= this.i)
      throw drd.g(); 
    i = d(i);
    this.h++;
    paramdre.b(this);
    a(0);
    this.h--;
    e(i);
  }
  
  public void a(dre paramdre, int paramInt) {
    if (this.h >= this.i)
      throw drd.g(); 
    this.h++;
    paramdre.b(this);
    a(drh.a(paramInt, 4));
    this.h--;
  }
  
  public byte[] a(int paramInt1, int paramInt2) {
    if (paramInt2 == 0)
      return drh.l; 
    byte[] arrayOfByte = new byte[paramInt2];
    int i = this.b;
    System.arraycopy(this.a, i + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
  
  public void b() {
    int i;
    do {
      i = a();
    } while (i != 0 && b(i));
  }
  
  public boolean b(int paramInt) {
    switch (drh.a(paramInt)) {
      default:
        throw drd.f();
      case 0:
        g();
        return true;
      case 1:
        q();
        return true;
      case 2:
        g(n());
        return true;
      case 3:
        b();
        a(drh.a(drh.b(paramInt), 4));
        return true;
      case 4:
        return false;
      case 5:
        break;
    } 
    p();
    return true;
  }
  
  public double c() {
    return Double.longBitsToDouble(q());
  }
  
  public float d() {
    return Float.intBitsToFloat(p());
  }
  
  public int d(int paramInt) {
    if (paramInt < 0)
      throw drd.b(); 
    paramInt = this.e + paramInt;
    int i = this.g;
    if (paramInt > i)
      throw drd.a(); 
    this.g = paramInt;
    v();
    return i;
  }
  
  public long e() {
    return o();
  }
  
  public void e(int paramInt) {
    this.g = paramInt;
    v();
  }
  
  public long f() {
    return o();
  }
  
  public void f(int paramInt) {
    if (paramInt > this.e - this.b) {
      int i = this.e;
      int j = this.b;
      throw new IllegalArgumentException((new StringBuilder(50)).append("Position ").append(paramInt).append(" is beyond current ").append(i - j).toString());
    } 
    if (paramInt < 0)
      throw new IllegalArgumentException((new StringBuilder(24)).append("Bad position ").append(paramInt).toString()); 
    this.e = this.b + paramInt;
  }
  
  public int g() {
    return n();
  }
  
  public void g(int paramInt) {
    if (paramInt < 0)
      throw drd.b(); 
    if (this.e + paramInt > this.g) {
      g(this.g - this.e);
      throw drd.a();
    } 
    if (paramInt <= this.c - this.e) {
      this.e += paramInt;
      return;
    } 
    throw drd.a();
  }
  
  public long h() {
    return q();
  }
  
  public boolean i() {
    return (n() != 0);
  }
  
  public String j() {
    int i = n();
    if (i < 0)
      throw drd.b(); 
    if (i > this.c - this.e)
      throw drd.a(); 
    String str = new String(this.a, this.e, i, drc.a);
    this.e = i + this.e;
    return str;
  }
  
  public byte[] k() {
    int i = n();
    if (i < 0)
      throw drd.b(); 
    if (i == 0)
      return drh.l; 
    if (i > this.c - this.e)
      throw drd.a(); 
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.a, this.e, arrayOfByte, 0, i);
    this.e = i + this.e;
    return arrayOfByte;
  }
  
  public int l() {
    return c(n());
  }
  
  public long m() {
    return a(o());
  }
  
  public int n() {
    int i = u();
    if (i < 0) {
      i = i & 0x7F;
      byte b1 = u();
      if (b1 >= 0)
        return i | b1 << 7; 
      i |= (b1 & Byte.MAX_VALUE) << 7;
      b1 = u();
      if (b1 >= 0)
        return i | b1 << 14; 
      i |= (b1 & Byte.MAX_VALUE) << 14;
      byte b2 = u();
      if (b2 >= 0)
        return i | b2 << 21; 
      b1 = u();
      int j = i | (b2 & Byte.MAX_VALUE) << 21 | b1 << 28;
      i = j;
      if (b1 < 0) {
        b1 = 0;
        while (b1 < 5) {
          i = j;
          if (u() < 0) {
            int k = b1 + 1;
            continue;
          } 
          return i;
        } 
        throw drd.c();
      } 
    } 
    return i;
  }
  
  public long o() {
    int i = 0;
    long l = 0L;
    while (i < 64) {
      byte b = u();
      l |= (b & Byte.MAX_VALUE) << i;
      if ((b & 0x80) == 0)
        return l; 
      i += 7;
    } 
    throw drd.c();
  }
  
  public int p() {
    return u() & 0xFF | (u() & 0xFF) << 8 | (u() & 0xFF) << 16 | (u() & 0xFF) << 24;
  }
  
  public long q() {
    byte b1 = u();
    byte b2 = u();
    byte b3 = u();
    byte b4 = u();
    byte b5 = u();
    byte b6 = u();
    byte b7 = u();
    byte b8 = u();
    long l = b1;
    return (b2 & 0xFFL) << 8L | l & 0xFFL | (b3 & 0xFFL) << 16L | (b4 & 0xFFL) << 24L | (b5 & 0xFFL) << 32L | (b6 & 0xFFL) << 40L | (b7 & 0xFFL) << 48L | (b8 & 0xFFL) << 56L;
  }
  
  public int r() {
    if (this.g == Integer.MAX_VALUE)
      return -1; 
    int i = this.e;
    return this.g - i;
  }
  
  public boolean s() {
    return (this.e == this.c);
  }
  
  public int t() {
    return this.e - this.b;
  }
  
  public byte u() {
    if (this.e == this.c)
      throw drd.a(); 
    byte[] arrayOfByte = this.a;
    int i = this.e;
    this.e = i + 1;
    return arrayOfByte[i];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */