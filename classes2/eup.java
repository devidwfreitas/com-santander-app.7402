final class eup {
  private final int a;
  
  private final byte[] b;
  
  private eup(int paramInt, byte[] paramArrayOfbyte) {
    this.a = paramInt;
    this.b = paramArrayOfbyte;
  }
  
  static eup[] a(byte[] paramArrayOfbyte, euu parameuu) {
    boolean bool;
    eux eux = parameuu.g();
    euw[] arrayOfEuw = eux.b();
    int k = arrayOfEuw.length;
    int i = 0;
    int j = 0;
    while (i < k) {
      j += arrayOfEuw[i].a();
      i++;
    } 
    eup[] arrayOfEup = new eup[j];
    int m = arrayOfEuw.length;
    j = 0;
    i = 0;
    while (j < m) {
      euw euw = arrayOfEuw[j];
      k = 0;
      while (k < euw.a()) {
        bool = euw.b();
        arrayOfEup[i] = new eup(bool, new byte[eux.a() + bool]);
        k++;
        i++;
      } 
      j++;
    } 
    int n = (arrayOfEup[0]).b.length - eux.a();
    k = 0;
    j = 0;
    while (k < n - 1) {
      m = 0;
      while (m < i) {
        (arrayOfEup[m]).b[k] = paramArrayOfbyte[j];
        m++;
        j++;
      } 
      k++;
    } 
    if (parameuu.a() == 24) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      k = 8;
    } else {
      k = i;
    } 
    m = 0;
    while (m < k) {
      (arrayOfEup[m]).b[n - 1] = paramArrayOfbyte[j];
      m++;
      j++;
    } 
    int i1 = (arrayOfEup[0]).b.length;
    k = j;
    for (j = n; j < i1; j++) {
      m = 0;
      while (m < i) {
        int i2;
        if (bool) {
          n = (m + 8) % i;
        } else {
          n = m;
        } 
        if (bool && n > 7) {
          i2 = j - 1;
        } else {
          i2 = j;
        } 
        (arrayOfEup[n]).b[i2] = paramArrayOfbyte[k];
        m++;
        k++;
      } 
    } 
    if (k != paramArrayOfbyte.length)
      throw new IllegalArgumentException(); 
    return arrayOfEup;
  }
  
  int a() {
    return this.a;
  }
  
  byte[] b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */