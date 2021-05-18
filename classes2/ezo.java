final class ezo {
  private final ett a;
  
  private fag b;
  
  private fad c;
  
  private boolean d;
  
  ezo(ett paramett) {
    int i = paramett.g();
    if (i < 21 || (i & 0x3) != 1)
      throw eqb.a(); 
    this.a = paramett;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3) {
    boolean bool;
    if (this.d) {
      bool = this.a.a(paramInt2, paramInt1);
    } else {
      bool = this.a.a(paramInt1, paramInt2);
    } 
    return bool ? (paramInt3 << 1 | 0x1) : (paramInt3 << 1);
  }
  
  fad a() {
    int k = 0;
    if (this.c != null)
      return this.c; 
    int i = 0;
    int j = 0;
    while (i < 6) {
      j = a(i, 8, j);
      i++;
    } 
    j = a(8, 7, a(8, 8, a(7, 8, j)));
    for (i = 5; i >= 0; i--)
      j = a(8, i, j); 
    int n = this.a.g();
    int m = n - 1;
    i = k;
    for (k = m; k >= n - 7; k--)
      i = a(8, k, i); 
    m = n - 8;
    k = i;
    for (i = m; i < n; i++)
      k = a(i, 8, k); 
    this.c = fad.b(j, k);
    if (this.c != null)
      return this.c; 
    throw eqb.a();
  }
  
  void a(boolean paramBoolean) {
    this.b = null;
    this.c = null;
    this.d = paramBoolean;
  }
  
  fag b() {
    if (this.b != null)
      return this.b; 
    int k = this.a.g();
    int i = (k - 17) / 4;
    if (i <= 6)
      return fag.b(i); 
    int m = k - 11;
    i = 5;
    int j = 0;
    while (i >= 0) {
      for (int n = k - 9; n >= m; n--)
        j = a(n, i, j); 
      i--;
    } 
    fag fag1 = fag.c(j);
    if (fag1 != null && fag1.d() == k) {
      this.b = fag1;
      return fag1;
    } 
    j = 0;
    for (i = 5; i >= 0; i--) {
      for (int n = k - 9; n >= m; n--)
        j = a(i, n, j); 
    } 
    fag1 = fag.c(j);
    if (fag1 != null && fag1.d() == k) {
      this.b = fag1;
      return fag1;
    } 
    throw eqb.a();
  }
  
  byte[] c() {
    fad fad1 = a();
    fag fag1 = b();
    ezq ezq = ezq.a(fad1.b());
    int i1 = this.a.g();
    ezq.a(this.a, i1);
    ett ett1 = fag1.e();
    byte[] arrayOfByte = new byte[fag1.c()];
    int i = i1 - 1;
    int j = 0;
    int k = 0;
    int n = 0;
    int m;
    for (m = 1; i > 0; m ^= 0x1) {
      int i2 = i;
      if (i == 6)
        i2 = i - 1; 
      i = 0;
      while (i < i1) {
        int i4;
        if (m) {
          i4 = i1 - 1 - i;
        } else {
          i4 = i;
        } 
        int i5 = 0;
        int i3 = k;
        int i6 = j;
        while (i5 < 2) {
          k = i6;
          j = i3;
          int i7 = n;
          if (!ett1.a(i2 - i5, i4)) {
            i6++;
            j = i3 << 1;
            i3 = j;
            if (this.a.a(i2 - i5, i4))
              i3 = j | 0x1; 
            k = i6;
            j = i3;
            i7 = n;
            if (i6 == 8) {
              arrayOfByte[n] = (byte)i3;
              j = 0;
              i7 = n + 1;
              k = 0;
            } 
          } 
          i5++;
          i6 = k;
          i3 = j;
          n = i7;
        } 
        i++;
        j = i6;
        k = i3;
      } 
      i = i2 - 2;
    } 
    if (n != fag1.c())
      throw eqb.a(); 
    return arrayOfByte;
  }
  
  void d() {
    if (this.c == null)
      return; 
    ezq ezq = ezq.a(this.c.b());
    int i = this.a.g();
    ezq.a(this.a, i);
  }
  
  void e() {
    for (int i = 0; i < this.a.f(); i++) {
      for (int j = i + 1; j < this.a.g(); j++) {
        if (this.a.a(i, j) != this.a.a(j, i)) {
          this.a.d(j, i);
          this.a.d(i, j);
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */