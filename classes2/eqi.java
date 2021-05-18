public final class eqi extends eqd {
  private static final int a = 2;
  
  private final byte[] b;
  
  private final int c;
  
  private final int d;
  
  private final int e;
  
  private final int f;
  
  public eqi(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean) {
    super(paramInt5, paramInt6);
    if (paramInt3 + paramInt5 > paramInt1 || paramInt4 + paramInt6 > paramInt2)
      throw new IllegalArgumentException("Crop rectangle does not fit within image data."); 
    this.b = paramArrayOfbyte;
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
    if (paramBoolean)
      a(paramInt5, paramInt6); 
  }
  
  private void a(int paramInt1, int paramInt2) {
    byte[] arrayOfByte = this.b;
    int i = this.f;
    int j = this.c;
    i = this.e + i * j;
    for (j = 0; j < paramInt2; j++) {
      int n = paramInt1 / 2;
      int k = i + paramInt1 - 1;
      int m = i;
      while (m < i + n) {
        byte b = arrayOfByte[m];
        arrayOfByte[m] = arrayOfByte[k];
        arrayOfByte[k] = b;
        m++;
        k--;
      } 
      i += this.c;
    } 
  }
  
  public eqd a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return new eqi(this.b, this.c, this.d, this.e + paramInt1, this.f + paramInt2, paramInt3, paramInt4, false);
  }
  
  public byte[] a() {
    int i = 0;
    int k = g();
    int m = h();
    if (k == this.c && m == this.d)
      return this.b; 
    int n = k * m;
    byte[] arrayOfByte1 = new byte[n];
    int j = this.f * this.c + this.e;
    if (k == this.c) {
      System.arraycopy(this.b, j, arrayOfByte1, 0, n);
      return arrayOfByte1;
    } 
    byte[] arrayOfByte2 = this.b;
    while (true) {
      byte[] arrayOfByte = arrayOfByte1;
      if (i < m) {
        System.arraycopy(arrayOfByte2, j, arrayOfByte1, i * k, k);
        j += this.c;
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
        int i3 = this.f;
        int i4 = this.c;
        int i5 = this.e;
        System.arraycopy(this.b, (i3 + paramInt) * i4 + i5, arrayOfByte1, 0, i);
        return arrayOfByte1;
      } 
      int n = this.f;
      int i1 = this.c;
      int i2 = this.e;
      System.arraycopy(this.b, (n + paramInt) * i1 + i2, arrayOfByte1, 0, i);
      return arrayOfByte1;
    } 
    byte[] arrayOfByte = new byte[i];
    int j = this.f;
    int k = this.c;
    int m = this.e;
    System.arraycopy(this.b, (j + paramInt) * k + m, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public boolean b() {
    return true;
  }
  
  public int[] i() {
    int m = g() / 2;
    int n = h() / 2;
    int[] arrayOfInt = new int[m * n];
    byte[] arrayOfByte = this.b;
    int j = this.f;
    int k = this.c;
    int i1 = this.e;
    int i = 0;
    j = j * k + i1;
    while (i < n) {
      for (k = 0; k < m; k++)
        arrayOfInt[i * m + k] = (arrayOfByte[k * 2 + j] & 0xFF) * 65793 | 0xFF000000; 
      j += this.c * 2;
      i++;
    } 
    return arrayOfInt;
  }
  
  public int j() {
    return g() / 2;
  }
  
  public int k() {
    return h() / 2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */