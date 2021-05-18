import java.util.Map;

public final class ewq extends exe {
  private static final int a = 67;
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramepu != epu.EAN_8)
      throw new IllegalArgumentException("Can only encode EAN_8, but got " + paramepu); 
    return super.a(paramString, paramepu, paramInt1, paramInt2, paramMap);
  }
  
  public boolean[] a(String paramString) {
    if (paramString.length() != 8)
      throw new IllegalArgumentException("Requested contents should be 8 digits long, but got " + paramString.length()); 
    boolean[] arrayOfBoolean = new boolean[67];
    int j = a(arrayOfBoolean, 0, exd.b, true) + 0;
    int i;
    for (i = 0; i <= 3; i++) {
      int k = Integer.parseInt(paramString.substring(i, i + 1));
      j += a(arrayOfBoolean, j, exd.d[k], false);
    } 
    j += a(arrayOfBoolean, j, exd.c, false);
    for (i = 4; i <= 7; i++) {
      int k = Integer.parseInt(paramString.substring(i, i + 1));
      j += a(arrayOfBoolean, j, exd.d[k], true);
    } 
    a(arrayOfBoolean, j, exd.b, true);
    return arrayOfBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */