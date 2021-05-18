public final class ewp extends exd {
  private final int[] a = new int[4];
  
  protected int a(ets paramets, int[] paramArrayOfint, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = this.a;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int k = paramets.a();
    int i = paramArrayOfint[1];
    int j;
    for (j = 0; j < 4 && i < k; j++) {
      paramStringBuilder.append((char)(a(paramets, arrayOfInt, i, d) + 48));
      int n = arrayOfInt.length;
      int m;
      for (m = 0; m < n; m++)
        i += arrayOfInt[m]; 
    } 
    i = a(paramets, i, true, c)[1];
    for (j = 0; j < 4 && i < k; j++) {
      paramStringBuilder.append((char)(a(paramets, arrayOfInt, i, d) + 48));
      int n = arrayOfInt.length;
      int m;
      for (m = 0; m < n; m++)
        i += arrayOfInt[m]; 
    } 
    return i;
  }
  
  epu b() {
    return epu.EAN_8;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */