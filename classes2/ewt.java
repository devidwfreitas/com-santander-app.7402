import java.util.Map;

public final class ewt extends ewx {
  private static final int[] a = new int[] { 1, 1, 1, 1 };
  
  private static final int[] b = new int[] { 3, 1, 1 };
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramepu != epu.ITF)
      throw new IllegalArgumentException("Can only encode ITF, but got " + paramepu); 
    return super.a(paramString, paramepu, paramInt1, paramInt2, paramMap);
  }
  
  public boolean[] a(String paramString) {
    int k = paramString.length();
    if (k % 2 != 0)
      throw new IllegalArgumentException("The lenght of the input should be even"); 
    if (k > 80)
      throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + k); 
    boolean[] arrayOfBoolean = new boolean[k * 9 + 9];
    int j = a(arrayOfBoolean, 0, a, true);
    for (int i = 0; i < k; i += 2) {
      int n = Character.digit(paramString.charAt(i), 10);
      int i1 = Character.digit(paramString.charAt(i + 1), 10);
      int[] arrayOfInt = new int[18];
      int m;
      for (m = 0; m < 5; m++) {
        arrayOfInt[m * 2] = ews.a[n][m];
        arrayOfInt[m * 2 + 1] = ews.a[i1][m];
      } 
      j += a(arrayOfBoolean, j, arrayOfInt, true);
    } 
    a(arrayOfBoolean, j, b, true);
    return arrayOfBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */