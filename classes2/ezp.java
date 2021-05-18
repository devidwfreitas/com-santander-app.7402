final class ezp {
  private final int a;
  
  private final byte[] b;
  
  private ezp(int paramInt, byte[] paramArrayOfbyte) {
    this.a = paramInt;
    this.b = paramArrayOfbyte;
  }
  
  static ezp[] a(byte[] paramArrayOfbyte, fag paramfag, fac paramfac) {
    if (paramArrayOfbyte.length != paramfag.c())
      throw new IllegalArgumentException(); 
    fai fai = paramfag.a(paramfac);
    fah[] arrayOfFah = fai.d();
    int k = arrayOfFah.length;
    int i = 0;
    int j = 0;
    while (i < k) {
      j += arrayOfFah[i].a();
      i++;
    } 
    ezp[] arrayOfEzp = new ezp[j];
    int m = arrayOfFah.length;
    k = 0;
    for (j = 0; k < m; j = i) {
      fah fah = arrayOfFah[k];
      i = j;
      j = 0;
      while (j < fah.a()) {
        int n = fah.b();
        arrayOfEzp[i] = new ezp(n, new byte[fai.a() + n]);
        j++;
        i++;
      } 
      k++;
    } 
    k = (arrayOfEzp[0]).b.length;
    i = arrayOfEzp.length - 1;
    while (true) {
      int n;
      int i1;
      if (i < 0 || (arrayOfEzp[i]).b.length == k) {
        i1 = i + 1;
        n = k - fai.a();
        k = 0;
        i = 0;
        while (k < n) {
          m = 0;
          while (m < j) {
            (arrayOfEzp[m]).b[k] = paramArrayOfbyte[i];
            m++;
            i++;
          } 
          k++;
        } 
      } else {
        i--;
        continue;
      } 
      m = i1;
      for (k = i; m < j; k++) {
        (arrayOfEzp[m]).b[n] = paramArrayOfbyte[k];
        m++;
      } 
      int i2 = (arrayOfEzp[0]).b.length;
      for (i = n; i < i2; i++) {
        m = 0;
        while (m < j) {
          if (m < i1) {
            n = i;
          } else {
            n = i + 1;
          } 
          (arrayOfEzp[m]).b[n] = paramArrayOfbyte[k];
          m++;
          k++;
        } 
      } 
      return arrayOfEzp;
    } 
  }
  
  int a() {
    return this.a;
  }
  
  byte[] b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */