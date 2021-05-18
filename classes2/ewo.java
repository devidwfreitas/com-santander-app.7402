import java.util.Map;

public final class ewo extends exe {
  private static final int a = 95;
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramepu != epu.EAN_13)
      throw new IllegalArgumentException("Can only encode EAN_13, but got " + paramepu); 
    return super.a(paramString, paramepu, paramInt1, paramInt2, paramMap);
  }
  
  public boolean[] a(String paramString) {
    if (paramString.length() != 13)
      throw new IllegalArgumentException("Requested contents should be 13 digits long, but got " + paramString.length()); 
    try {
      if (!exd.a(paramString))
        throw new IllegalArgumentException("Contents do not pass checksum"); 
    } catch (eqb eqb) {
      throw new IllegalArgumentException("Illegal contents");
    } 
    int i = Integer.parseInt(eqb.substring(0, 1));
    int k = ewn.a[i];
    boolean[] arrayOfBoolean = new boolean[95];
    int j = a(arrayOfBoolean, 0, exd.b, true);
    i = 1;
    j += 0;
    while (i <= 6) {
      int n = Integer.parseInt(eqb.substring(i, i + 1));
      int m = n;
      if ((k >> 6 - i & 0x1) == 1)
        m = n + 10; 
      j += a(arrayOfBoolean, j, exd.e[m], false);
      i++;
    } 
    j += a(arrayOfBoolean, j, exd.c, false);
    for (i = 7; i <= 12; i++) {
      int m = Integer.parseInt(eqb.substring(i, i + 1));
      j += a(arrayOfBoolean, j, exd.d[m], true);
    } 
    a(arrayOfBoolean, j, exd.b, true);
    return arrayOfBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */