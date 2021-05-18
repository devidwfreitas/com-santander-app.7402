import java.util.Map;

public final class ewl extends ewx {
  private static void a(int paramInt, int[] paramArrayOfint) {
    for (int i = 0; i < 9; i++) {
      byte b;
      if ((1 << 8 - i & paramInt) == 0) {
        b = 1;
      } else {
        b = 2;
      } 
      paramArrayOfint[i] = b;
    } 
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramepu != epu.CODE_39)
      throw new IllegalArgumentException("Can only encode CODE_39, but got " + paramepu); 
    return super.a(paramString, paramepu, paramInt1, paramInt2, paramMap);
  }
  
  public boolean[] a(String paramString) {
    int k = paramString.length();
    if (k > 80)
      throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + k); 
    int[] arrayOfInt1 = new int[9];
    int i = k + 25;
    int j;
    for (j = 0; j < k; j++) {
      int m = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(paramString.charAt(j));
      if (m < 0)
        throw new IllegalArgumentException("Bad contents: " + paramString); 
      a(ewk.b[m], arrayOfInt1);
      int n = arrayOfInt1.length;
      for (m = 0; m < n; m++)
        i += arrayOfInt1[m]; 
    } 
    boolean[] arrayOfBoolean = new boolean[i];
    a(ewk.b[39], arrayOfInt1);
    i = a(arrayOfBoolean, 0, arrayOfInt1, true);
    int[] arrayOfInt2 = new int[1];
    arrayOfInt2[0] = 1;
    j = i + a(arrayOfBoolean, i, arrayOfInt2, false);
    for (i = 0; i < k; i++) {
      int m = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(paramString.charAt(i));
      a(ewk.b[m], arrayOfInt1);
      j += a(arrayOfBoolean, j, arrayOfInt1, true);
      j += a(arrayOfBoolean, j, arrayOfInt2, false);
    } 
    a(ewk.b[39], arrayOfInt1);
    a(arrayOfBoolean, j, arrayOfInt1, true);
    return arrayOfBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */