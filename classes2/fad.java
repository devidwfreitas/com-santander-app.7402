final class fad {
  private static final int a = 21522;
  
  private static final int[][] b;
  
  private static final int[] c = new int[] { 
      0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 
      2, 3, 2, 3, 3, 4 };
  
  private final fac d;
  
  private final byte e;
  
  private fad(int paramInt) {
    this.d = fac.forBits(paramInt >> 3 & 0x3);
    this.e = (byte)(paramInt & 0x7);
  }
  
  static int a(int paramInt1, int paramInt2) {
    paramInt1 ^= paramInt2;
    paramInt2 = c[paramInt1 & 0xF];
    int i = c[paramInt1 >>> 4 & 0xF];
    int j = c[paramInt1 >>> 8 & 0xF];
    int k = c[paramInt1 >>> 12 & 0xF];
    int m = c[paramInt1 >>> 16 & 0xF];
    int n = c[paramInt1 >>> 20 & 0xF];
    int i1 = c[paramInt1 >>> 24 & 0xF];
    return c[paramInt1 >>> 28 & 0xF] + paramInt2 + i + j + k + m + n + i1;
  }
  
  static fad b(int paramInt1, int paramInt2) {
    fad fad1 = c(paramInt1, paramInt2);
    return (fad1 != null) ? fad1 : c(paramInt1 ^ 0x5412, paramInt2 ^ 0x5412);
  }
  
  private static fad c(int paramInt1, int paramInt2) {
    int j = Integer.MAX_VALUE;
    int[][] arrayOfInt = b;
    int m = arrayOfInt.length;
    int k = 0;
    int i = 0;
    while (k < m) {
      int[] arrayOfInt1 = arrayOfInt[k];
      int i1 = arrayOfInt1[0];
      if (i1 == paramInt1 || i1 == paramInt2)
        return new fad(arrayOfInt1[1]); 
      int n = a(paramInt1, i1);
      if (n < j) {
        i = arrayOfInt1[1];
        j = n;
      } 
      if (paramInt1 != paramInt2) {
        n = a(paramInt2, i1);
        if (n < j) {
          i = arrayOfInt1[1];
          j = n;
        } 
      } 
      k++;
    } 
    return (j <= 3) ? new fad(i) : null;
  }
  
  fac a() {
    return this.d;
  }
  
  byte b() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof fad) {
      paramObject = paramObject;
      if (this.d == ((fad)paramObject).d && this.e == ((fad)paramObject).e)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return this.d.ordinal() << 3 | this.e;
  }
  
  static {
    int[] arrayOfInt1 = { 32170, 10 };
    int[] arrayOfInt2 = { 25368, 13 };
    int[] arrayOfInt3 = { 5769, 16 };
    int[] arrayOfInt4 = { 13663, 24 };
    int[] arrayOfInt5 = { 11994, 30 };
    b = new int[][] { 
        { 21522, 0 }, { 20773, 1 }, { 24188, 2 }, { 23371, 3 }, { 17913, 4 }, { 16590, 5 }, { 20375, 6 }, { 19104, 7 }, { 30660, 8 }, { 29427, 9 }, 
        arrayOfInt1, { 30877, 11 }, { 26159, 12 }, arrayOfInt2, { 27713, 14 }, { 26998, 15 }, arrayOfInt3, { 5054, 17 }, { 7399, 18 }, { 6608, 19 }, 
        { 1890, 20 }, { 597, 21 }, { 3340, 22 }, { 2107, 23 }, arrayOfInt4, { 12392, 25 }, { 16177, 26 }, { 14854, 27 }, { 9396, 28 }, { 8579, 29 }, 
        arrayOfInt5, { 11245, 31 } };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */