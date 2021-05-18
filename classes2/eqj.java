public final class eqj extends eqd {
  private final byte[] a;
  
  private final int b;
  
  private final int c;
  
  private final int d;
  
  private final int e;
  
  public eqj(int paramInt1, int paramInt2, int[] paramArrayOfint) {
    super(paramInt1, paramInt2);
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = 0;
    this.e = 0;
    this.a = new byte[paramInt1 * paramInt2];
    int i;
    for (i = 0; i < paramInt2; i++) {
      int k = i * paramInt1;
      for (int j = 0; j < paramInt1; j++) {
        int i1 = paramArrayOfint[k + j];
        int m = i1 >> 16 & 0xFF;
        int n = i1 >> 8 & 0xFF;
        i1 &= 0xFF;
        if (m == n && n == i1) {
          this.a[k + j] = (byte)m;
        } else {
          this.a[k + j] = (byte)((i1 + m + n * 2) / 4);
        } 
      } 
    } 
  }
  
  private eqj(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6) {
    super(paramInt5, paramInt6);
    if (paramInt3 + paramInt5 > paramInt1 || paramInt4 + paramInt6 > paramInt2)
      throw new IllegalArgumentException("Crop rectangle does not fit within image data."); 
    this.a = paramArrayOfbyte;
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
    this.e = paramInt4;
  }
  
  public eqd a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return new eqj(this.a, this.b, this.c, this.d + paramInt1, this.e + paramInt2, paramInt3, paramInt4);
  }
  
  public byte[] a() {
    int i = 0;
    int k = g();
    int m = h();
    if (k == this.b && m == this.c)
      return this.a; 
    int n = k * m;
    byte[] arrayOfByte1 = new byte[n];
    int j = this.e * this.b + this.d;
    if (k == this.b) {
      System.arraycopy(this.a, j, arrayOfByte1, 0, n);
      return arrayOfByte1;
    } 
    byte[] arrayOfByte2 = this.a;
    while (true) {
      byte[] arrayOfByte = arrayOfByte1;
      if (i < m) {
        System.arraycopy(arrayOfByte2, j, arrayOfByte1, i * k, k);
        j += this.b;
        i++;
        continue;
      } 
      return arrayOfByte;
    } 
  }
  
  public byte[] a(int paramInt, byte[] paramArrayOfbyte) {
    if (paramInt < 0 || paramInt >= h())
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt); 
    int i = g();
    if (paramArrayOfbyte != null) {
      byte[] arrayOfByte1 = paramArrayOfbyte;
      if (paramArrayOfbyte.length < i) {
        arrayOfByte1 = new byte[i];
        int i3 = this.e;
        int i4 = this.b;
        int i5 = this.d;
        System.arraycopy(this.a, (i3 + paramInt) * i4 + i5, arrayOfByte1, 0, i);
        return arrayOfByte1;
      } 
      int n = this.e;
      int i1 = this.b;
      int i2 = this.d;
      System.arraycopy(this.a, (n + paramInt) * i1 + i2, arrayOfByte1, 0, i);
      return arrayOfByte1;
    } 
    byte[] arrayOfByte = new byte[i];
    int j = this.e;
    int k = this.b;
    int m = this.d;
    System.arraycopy(this.a, (j + paramInt) * k + m, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public boolean b() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */