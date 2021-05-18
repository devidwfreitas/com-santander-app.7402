public class as extends co {
  static final int[] a = new int[] { 
      1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 
      607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 
      770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 
      113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, 
      -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 
      659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, 
      -1866530822, -1538233109, -1090935817, -965641998 };
  
  private static final int b = 32;
  
  private int c;
  
  private int d;
  
  private int e;
  
  private int f;
  
  private int g;
  
  private int h;
  
  private int i;
  
  private int j;
  
  private int[] k = new int[64];
  
  private int l;
  
  public as() {
    c();
  }
  
  public as(as paramas) {
    super(paramas);
    this.c = paramas.c;
    this.d = paramas.d;
    this.e = paramas.e;
    this.f = paramas.f;
    this.g = paramas.g;
    this.h = paramas.h;
    this.i = paramas.i;
    this.j = paramas.j;
    System.arraycopy(paramas.k, 0, this.k, 0, paramas.k.length);
    this.l = paramas.l;
  }
  
  private int a(int paramInt) {
    return (paramInt >>> 2 | paramInt << 30) ^ (paramInt >>> 13 | paramInt << 19) ^ (paramInt >>> 22 | paramInt << 10);
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3) {
    return paramInt1 & paramInt2 ^ (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private void a(int paramInt1, byte[] paramArrayOfbyte, int paramInt2) {
    paramArrayOfbyte[paramInt2] = (byte)(paramInt1 >>> 24);
    paramArrayOfbyte[paramInt2 + 1] = (byte)(paramInt1 >>> 16);
    paramArrayOfbyte[paramInt2 + 2] = (byte)(paramInt1 >>> 8);
    paramArrayOfbyte[paramInt2 + 3] = (byte)paramInt1;
  }
  
  private int b(int paramInt) {
    return (paramInt >>> 6 | paramInt << 26) ^ (paramInt >>> 11 | paramInt << 21) ^ (paramInt >>> 25 | paramInt << 7);
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3) {
    return paramInt1 & paramInt2 ^ paramInt1 & paramInt3 ^ paramInt2 & paramInt3;
  }
  
  private int c(int paramInt) {
    return (paramInt >>> 7 | paramInt << 25) ^ (paramInt >>> 18 | paramInt << 14) ^ paramInt >>> 3;
  }
  
  private int d(int paramInt) {
    return (paramInt >>> 17 | paramInt << 15) ^ (paramInt >>> 19 | paramInt << 13) ^ paramInt >>> 10;
  }
  
  public String a() {
    return "SHA-256";
  }
  
  protected void a(long paramLong) {
    if (this.l > 14)
      d(); 
    this.k[14] = (int)(paramLong >>> 32L);
    this.k[15] = (int)(0xFFFFFFFFFFFFFFFFL & paramLong);
  }
  
  protected void a(byte[] paramArrayOfbyte, int paramInt) {
    int[] arrayOfInt = this.k;
    int i = this.l;
    this.l = i + 1;
    arrayOfInt[i] = (paramArrayOfbyte[paramInt] & 0xFF) << 24 | (paramArrayOfbyte[paramInt + 1] & 0xFF) << 16 | (paramArrayOfbyte[paramInt + 2] & 0xFF) << 8 | paramArrayOfbyte[paramInt + 3] & 0xFF;
    if (this.l == 16)
      d(); 
  }
  
  public int b() {
    return 32;
  }
  
  public int b(byte[] paramArrayOfbyte, int paramInt) {
    f();
    a(this.c, paramArrayOfbyte, paramInt);
    a(this.d, paramArrayOfbyte, paramInt + 4);
    a(this.e, paramArrayOfbyte, paramInt + 8);
    a(this.f, paramArrayOfbyte, paramInt + 12);
    a(this.g, paramArrayOfbyte, paramInt + 16);
    a(this.h, paramArrayOfbyte, paramInt + 20);
    a(this.i, paramArrayOfbyte, paramInt + 24);
    a(this.j, paramArrayOfbyte, paramInt + 28);
    c();
    return 32;
  }
  
  public void c() {
    super.c();
    this.c = 1779033703;
    this.d = -1150833019;
    this.e = 1013904242;
    this.f = -1521486534;
    this.g = 1359893119;
    this.h = -1694144372;
    this.i = 528734635;
    this.j = 1541459225;
    this.l = 0;
    for (int i = 0;; i++) {
      if (i == this.k.length)
        return; 
      this.k[i] = 0;
    } 
  }
  
  protected void d() {
    for (int i = 16;; i++) {
      if (i > 63) {
        int j = this.c;
        int m = this.d;
        int i1 = this.e;
        int i3 = this.f;
        int k = this.g;
        int n = this.h;
        int i2 = this.i;
        int i5 = this.j;
        i = 0;
        int i4 = 0;
        while (true) {
          if (i >= 8) {
            this.c += j;
            this.d += m;
            this.e += i1;
            this.f += i3;
            this.g += k;
            this.h += n;
            this.i += i2;
            this.j += i5;
            this.l = 0;
            for (i = 0;; i++) {
              if (i >= 16)
                return; 
              this.k[i] = 0;
            } 
            break;
          } 
          int i7 = b(k);
          int i8 = a(k, n, i2);
          int i9 = a[i4];
          int[] arrayOfInt = this.k;
          int i6 = i4 + 1;
          i4 = arrayOfInt[i4] + i7 + i8 + i9 + i5;
          i3 += i4;
          i4 += a(j) + b(j, m, i1);
          i7 = b(i3);
          i8 = a(i3, k, n);
          i9 = a[i6];
          arrayOfInt = this.k;
          i5 = i6 + 1;
          i2 += i7 + i8 + i9 + arrayOfInt[i6];
          i1 += i2;
          i2 += a(i4) + b(i4, j, m);
          i7 = b(i1);
          i8 = a(i1, i3, k);
          i9 = a[i5];
          arrayOfInt = this.k;
          i6 = i5 + 1;
          n += i7 + i8 + i9 + arrayOfInt[i5];
          m += n;
          n += a(i2) + b(i2, i4, j);
          i7 = b(m);
          i8 = a(m, i1, i3);
          i9 = a[i6];
          arrayOfInt = this.k;
          i5 = i6 + 1;
          k += i7 + i8 + i9 + arrayOfInt[i6];
          j += k;
          k += a(n) + b(n, i2, i4);
          i7 = b(j);
          i8 = a(j, m, i1);
          i9 = a[i5];
          arrayOfInt = this.k;
          i6 = i5 + 1;
          i3 = i7 + i8 + i9 + arrayOfInt[i5] + i3;
          i5 = i4 + i3;
          i3 += a(k) + b(k, n, i2);
          i7 = b(i5);
          i8 = a(i5, j, m);
          i9 = a[i6];
          arrayOfInt = this.k;
          i4 = i6 + 1;
          i1 = i7 + i8 + i9 + arrayOfInt[i6] + i1;
          i2 += i1;
          i1 = a(i3) + b(i3, k, n) + i1;
          i7 = b(i2);
          i8 = a(i2, i5, j);
          i9 = a[i4];
          arrayOfInt = this.k;
          i6 = i4 + 1;
          m = i7 + i8 + i9 + arrayOfInt[i4] + m;
          n += m;
          m = a(i1) + b(i1, i3, k) + m;
          i7 = b(n);
          i8 = a(n, i2, i5);
          i9 = a[i6];
          arrayOfInt = this.k;
          i4 = i6 + 1;
          j += i9 + i7 + i8 + arrayOfInt[i6];
          k += j;
          j += a(m) + b(m, i1, i3);
          i++;
        } 
        break;
      } 
      this.k[i] = d(this.k[i - 2]) + this.k[i - 7] + c(this.k[i - 15]) + this.k[i - 16];
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */