public final class ewn extends exd {
  static final int[] a = new int[] { 0, 11, 13, 14, 19, 25, 28, 21, 22, 26 };
  
  private final int[] f = new int[4];
  
  private static void a(StringBuilder paramStringBuilder, int paramInt) {
    for (int i = 0; i < 10; i++) {
      if (paramInt == a[i]) {
        paramStringBuilder.insert(0, (char)(i + 48));
        return;
      } 
    } 
    throw eqh.a();
  }
  
  protected int a(ets paramets, int[] paramArrayOfint, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = this.f;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int m = paramets.a();
    int i = paramArrayOfint[1];
    int j = 0;
    int k;
    for (k = 0; j < 6 && i < m; k = n) {
      int i1 = a(paramets, arrayOfInt, i, e);
      paramStringBuilder.append((char)(i1 % 10 + 48));
      int i2 = arrayOfInt.length;
      int n;
      for (n = 0; n < i2; n++)
        i += arrayOfInt[n]; 
      n = k;
      if (i1 >= 10)
        n = k | 1 << 5 - j; 
      j++;
    } 
    a(paramStringBuilder, k);
    i = a(paramets, i, true, c)[1];
    for (j = 0; j < 6 && i < m; j++) {
      paramStringBuilder.append((char)(a(paramets, arrayOfInt, i, d) + 48));
      int n = arrayOfInt.length;
      for (k = 0; k < n; k++)
        i += arrayOfInt[k]; 
    } 
    return i;
  }
  
  epu b() {
    return epu.EAN_13;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */