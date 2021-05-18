public class cq extends co {
  private static final int a = 20;
  
  private static final int i = 1518500249;
  
  private static final int j = 1859775393;
  
  private static final int k = -1894007588;
  
  private static final int l = -899497514;
  
  private int b;
  
  private int c;
  
  private int d;
  
  private int e;
  
  private int f;
  
  private int[] g = new int[80];
  
  private int h;
  
  public cq() {
    c();
  }
  
  public cq(cq paramcq) {
    super(paramcq);
    this.b = paramcq.b;
    this.c = paramcq.c;
    this.d = paramcq.d;
    this.e = paramcq.e;
    this.f = paramcq.f;
    System.arraycopy(paramcq.g, 0, this.g, 0, paramcq.g.length);
    this.h = paramcq.h;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3) {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private void a(int paramInt1, byte[] paramArrayOfbyte, int paramInt2) {
    int i = paramInt2 + 1;
    paramArrayOfbyte[paramInt2] = (byte)(paramInt1 >>> 24);
    paramInt2 = i + 1;
    paramArrayOfbyte[i] = (byte)(paramInt1 >>> 16);
    i = paramInt2 + 1;
    paramArrayOfbyte[paramInt2] = (byte)(paramInt1 >>> 8);
    paramArrayOfbyte[i] = (byte)paramInt1;
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3) {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  private int c(int paramInt1, int paramInt2, int paramInt3) {
    return paramInt1 & paramInt2 | paramInt1 & paramInt3 | paramInt2 & paramInt3;
  }
  
  public String a() {
    return "SHA-1";
  }
  
  protected void a(long paramLong) {
    if (this.h > 14)
      d(); 
    this.g[14] = (int)(paramLong >>> 32L);
    this.g[15] = (int)(0xFFFFFFFFFFFFFFFFL & paramLong);
  }
  
  protected void a(byte[] paramArrayOfbyte, int paramInt) {
    int[] arrayOfInt = this.g;
    int i = this.h;
    this.h = i + 1;
    arrayOfInt[i] = (paramArrayOfbyte[paramInt] & 0xFF) << 24 | (paramArrayOfbyte[paramInt + 1] & 0xFF) << 16 | (paramArrayOfbyte[paramInt + 2] & 0xFF) << 8 | paramArrayOfbyte[paramInt + 3] & 0xFF;
    if (this.h == 16)
      d(); 
  }
  
  public int b() {
    return 20;
  }
  
  public int b(byte[] paramArrayOfbyte, int paramInt) {
    f();
    a(this.b, paramArrayOfbyte, paramInt);
    a(this.c, paramArrayOfbyte, paramInt + 4);
    a(this.d, paramArrayOfbyte, paramInt + 8);
    a(this.e, paramArrayOfbyte, paramInt + 12);
    a(this.f, paramArrayOfbyte, paramInt + 16);
    c();
    return 20;
  }
  
  public void c() {
    super.c();
    this.b = 1732584193;
    this.c = -271733879;
    this.d = -1732584194;
    this.e = 271733878;
    this.f = -1009589776;
    this.h = 0;
    for (int i = 0;; i++) {
      if (i == this.g.length)
        return; 
      this.g[i] = 0;
    } 
  }
  
  protected void d() {
    for (int i = 16;; i++) {
      if (i >= 80) {
        int n = this.b;
        int i2 = this.c;
        i = this.d;
        int k = this.e;
        int i1 = this.f;
        int m = 0;
        for (int i3 = 0;; i3++) {
          if (i3 >= 4) {
            for (i3 = 0;; i3++) {
              if (i3 >= 4) {
                for (i3 = 0;; i3++) {
                  if (i3 >= 4) {
                    int i10 = 0;
                    i3 = n;
                    n = i;
                    for (i = i10;; i++) {
                      if (i > 3) {
                        this.b += i3;
                        this.c += i2;
                        this.d += n;
                        this.e += k;
                        this.f += i1;
                        this.h = 0;
                        for (i = 0;; i++) {
                          if (i >= 16)
                            return; 
                          this.g[i] = 0;
                        } 
                        break;
                      } 
                      int i11 = b(i2, n, k);
                      int[] arrayOfInt3 = this.g;
                      i10 = m + 1;
                      i1 = arrayOfInt3[m] + (i3 << 5 | i3 >>> 27) + i11 - 899497514 + i1;
                      m = i2 >>> 2 | i2 << 30;
                      i11 = b(i3, m, n);
                      arrayOfInt3 = this.g;
                      i2 = i10 + 1;
                      k += (i1 << 5 | i1 >>> 27) + i11 + arrayOfInt3[i10] - 899497514;
                      i3 = i3 >>> 2 | i3 << 30;
                      i11 = b(i1, i3, m);
                      arrayOfInt3 = this.g;
                      i10 = i2 + 1;
                      n += (k << 5 | k >>> 27) + i11 + arrayOfInt3[i2] - 899497514;
                      i1 = i1 << 30 | i1 >>> 2;
                      i2 = b(k, i1, i3);
                      arrayOfInt3 = this.g;
                      i11 = i10 + 1;
                      i2 = m + (n << 5 | n >>> 27) + i2 + arrayOfInt3[i10] - 899497514;
                      k = k >>> 2 | k << 30;
                      i10 = b(n, k, i1);
                      arrayOfInt3 = this.g;
                      m = i11 + 1;
                      i3 += i10 + (i2 << 5 | i2 >>> 27) + arrayOfInt3[i11] - 899497514;
                      n = n >>> 2 | n << 30;
                    } 
                    break;
                  } 
                  int i9 = c(i2, i, k);
                  int[] arrayOfInt2 = this.g;
                  int i8 = m + 1;
                  i1 = arrayOfInt2[m] + (n << 5 | n >>> 27) + i9 - 1894007588 + i1;
                  m = i2 >>> 2 | i2 << 30;
                  i9 = c(n, m, i);
                  arrayOfInt2 = this.g;
                  i2 = i8 + 1;
                  k += (i1 << 5 | i1 >>> 27) + i9 + arrayOfInt2[i8] - 1894007588;
                  n = n >>> 2 | n << 30;
                  i9 = c(i1, n, m);
                  arrayOfInt2 = this.g;
                  i8 = i2 + 1;
                  i += (k << 5 | k >>> 27) + i9 + arrayOfInt2[i2] - 1894007588;
                  i1 = i1 << 30 | i1 >>> 2;
                  i2 = c(k, i1, n);
                  arrayOfInt2 = this.g;
                  i9 = i8 + 1;
                  i2 = m + (i << 5 | i >>> 27) + i2 + arrayOfInt2[i8] - 1894007588;
                  k = k >>> 2 | k << 30;
                  i8 = c(i, k, i1);
                  arrayOfInt2 = this.g;
                  m = i9 + 1;
                  n += i8 + (i2 << 5 | i2 >>> 27) + arrayOfInt2[i9] - 1894007588;
                  i = i >>> 2 | i << 30;
                } 
                break;
              } 
              int i7 = b(i2, i, k);
              int[] arrayOfInt1 = this.g;
              int i6 = m + 1;
              i1 = arrayOfInt1[m] + (n << 5 | n >>> 27) + i7 + 1859775393 + i1;
              m = i2 >>> 2 | i2 << 30;
              i7 = b(n, m, i);
              arrayOfInt1 = this.g;
              i2 = i6 + 1;
              k += (i1 << 5 | i1 >>> 27) + i7 + arrayOfInt1[i6] + 1859775393;
              n = n >>> 2 | n << 30;
              i7 = b(i1, n, m);
              arrayOfInt1 = this.g;
              i6 = i2 + 1;
              i += (k << 5 | k >>> 27) + i7 + arrayOfInt1[i2] + 1859775393;
              i1 = i1 << 30 | i1 >>> 2;
              i2 = b(k, i1, n);
              arrayOfInt1 = this.g;
              i7 = i6 + 1;
              i2 = m + (i << 5 | i >>> 27) + i2 + arrayOfInt1[i6] + 1859775393;
              k = k >>> 2 | k << 30;
              i6 = b(i, k, i1);
              arrayOfInt1 = this.g;
              m = i7 + 1;
              n += i6 + (i2 << 5 | i2 >>> 27) + arrayOfInt1[i7] + 1859775393;
              i = i >>> 2 | i << 30;
            } 
            break;
          } 
          int i5 = a(i2, i, k);
          int[] arrayOfInt = this.g;
          int i4 = m + 1;
          i1 = arrayOfInt[m] + (n << 5 | n >>> 27) + i5 + 1518500249 + i1;
          m = i2 >>> 2 | i2 << 30;
          i5 = a(n, m, i);
          arrayOfInt = this.g;
          i2 = i4 + 1;
          k += (i1 << 5 | i1 >>> 27) + i5 + arrayOfInt[i4] + 1518500249;
          n = n >>> 2 | n << 30;
          i5 = a(i1, n, m);
          arrayOfInt = this.g;
          i4 = i2 + 1;
          i += (k << 5 | k >>> 27) + i5 + arrayOfInt[i2] + 1518500249;
          i1 = i1 << 30 | i1 >>> 2;
          i2 = a(k, i1, n);
          arrayOfInt = this.g;
          i5 = i4 + 1;
          i2 = m + (i << 5 | i >>> 27) + i2 + arrayOfInt[i4] + 1518500249;
          k = k >>> 2 | k << 30;
          i4 = a(i, k, i1);
          arrayOfInt = this.g;
          m = i5 + 1;
          n += i4 + (i2 << 5 | i2 >>> 27) + arrayOfInt[i5] + 1518500249;
          i = i >>> 2 | i << 30;
        } 
        break;
      } 
      int j = this.g[i - 3] ^ this.g[i - 8] ^ this.g[i - 14] ^ this.g[i - 16];
      this.g[i] = j >>> 31 | j << 1;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */