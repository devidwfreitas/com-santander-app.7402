import java.util.Map;

public final class ezn implements eqq {
  private static final int a = 4;
  
  private static ett a(fay paramfay, int paramInt1, int paramInt2, int paramInt3) {
    fat fat = paramfay.e();
    if (fat == null)
      throw new IllegalStateException(); 
    int k = fat.b();
    int m = fat.a();
    int i = paramInt3 * 2 + k;
    int j = paramInt3 * 2 + m;
    paramInt1 = Math.max(paramInt1, i);
    paramInt3 = Math.max(paramInt2, j);
    int n = Math.min(paramInt1 / i, paramInt3 / j);
    j = (paramInt1 - k * n) / 2;
    paramInt2 = (paramInt3 - m * n) / 2;
    ett ett = new ett(paramInt1, paramInt3);
    for (paramInt1 = 0; paramInt1 < m; paramInt1++) {
      i = 0;
      for (paramInt3 = j; i < k; paramInt3 += n) {
        if (fat.a(i, paramInt1) == 1)
          ett.a(paramInt3, paramInt2, n, n); 
        i++;
      } 
      paramInt2 += n;
    } 
    return ett;
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    return a(paramString, paramepu, paramInt1, paramInt2, null);
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramString.isEmpty())
      throw new IllegalArgumentException("Found empty contents"); 
    if (paramepu != epu.QR_CODE)
      throw new IllegalArgumentException("Can only encode QR_CODE, but got " + paramepu); 
    if (paramInt1 < 0 || paramInt2 < 0)
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2); 
    fac fac1 = fac.L;
    fac fac2 = fac1;
    if (paramMap != null) {
      fac2 = (fac)paramMap.get(eqa.ERROR_CORRECTION);
      if (fac2 != null)
        fac1 = fac2; 
      Integer integer = (Integer)paramMap.get(eqa.MARGIN);
      fac2 = fac1;
      if (integer != null) {
        int i = integer.intValue();
        return a(fau.a(paramString, fac1, paramMap), paramInt1, paramInt2, i);
      } 
    } 
    byte b = 4;
    fac1 = fac2;
    return a(fau.a(paramString, fac1, paramMap), paramInt1, paramInt2, b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */