public final class exf extends exd {
  private static final int[] a = new int[] { 1, 1, 1, 1, 1, 1 };
  
  private static final int[][] f = new int[][] { { 56, 52, 50, 49, 44, 38, 35, 42, 41, 37 }, { 7, 11, 13, 14, 19, 25, 28, 21, 22, 26 } };
  
  private final int[] g = new int[4];
  
  private static void a(StringBuilder paramStringBuilder, int paramInt) {
    for (int i = 0; i <= 1; i++) {
      for (int j = 0; j < 10; j++) {
        if (paramInt == f[i][j]) {
          paramStringBuilder.insert(0, (char)(i + 48));
          paramStringBuilder.append((char)(j + 48));
          return;
        } 
      } 
    } 
    throw eqh.a();
  }
  
  public static String b(String paramString) {
    char[] arrayOfChar = new char[6];
    paramString.getChars(1, 7, arrayOfChar, 0);
    StringBuilder stringBuilder = new StringBuilder(12);
    stringBuilder.append(paramString.charAt(0));
    char c = arrayOfChar[5];
    switch (c) {
      default:
        stringBuilder.append(arrayOfChar, 0, 5);
        stringBuilder.append("0000");
        stringBuilder.append(c);
        stringBuilder.append(paramString.charAt(7));
        return stringBuilder.toString();
      case '0':
      case '1':
      case '2':
        stringBuilder.append(arrayOfChar, 0, 2);
        stringBuilder.append(c);
        stringBuilder.append("0000");
        stringBuilder.append(arrayOfChar, 2, 3);
        stringBuilder.append(paramString.charAt(7));
        return stringBuilder.toString();
      case '3':
        stringBuilder.append(arrayOfChar, 0, 3);
        stringBuilder.append("00000");
        stringBuilder.append(arrayOfChar, 3, 2);
        stringBuilder.append(paramString.charAt(7));
        return stringBuilder.toString();
      case '4':
        break;
    } 
    stringBuilder.append(arrayOfChar, 0, 4);
    stringBuilder.append("00000");
    stringBuilder.append(arrayOfChar[4]);
    stringBuilder.append(paramString.charAt(7));
    return stringBuilder.toString();
  }
  
  protected int a(ets paramets, int[] paramArrayOfint, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = this.g;
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
    return i;
  }
  
  protected boolean a(String paramString) {
    return super.a(b(paramString));
  }
  
  protected int[] a(ets paramets, int paramInt) {
    return a(paramets, paramInt, true, a);
  }
  
  epu b() {
    return epu.UPC_E;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */