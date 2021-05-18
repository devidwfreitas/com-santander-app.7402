import java.util.Map;

public final class ewz implements eqq {
  private final ewo a = new ewo();
  
  private static String a(String paramString) {
    int i = paramString.length();
    if (i == 11) {
      i = 0;
      int j = 0;
      while (i < 11) {
        byte b;
        char c = paramString.charAt(i);
        if (i % 2 == 0) {
          b = 3;
        } else {
          b = 1;
        } 
        j += b * (c - 48);
        i++;
      } 
      String str1 = paramString + ((1000 - j) % 10);
      return '0' + str1;
    } 
    String str = paramString;
    if (i != 12)
      throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + paramString.length()); 
    return '0' + str;
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    return a(paramString, paramepu, paramInt1, paramInt2, null);
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramepu != epu.UPC_A)
      throw new IllegalArgumentException("Can only encode UPC-A, but got " + paramepu); 
    return this.a.a(a(paramString), epu.EAN_13, paramInt1, paramInt2, paramMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */