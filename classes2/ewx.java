import java.util.Map;

public abstract class ewx implements eqq {
  protected static int a(boolean[] paramArrayOfboolean, int paramInt, int[] paramArrayOfint, boolean paramBoolean) {
    int k = paramArrayOfint.length;
    int i = 0;
    int j = 0;
    while (i < k) {
      int n = paramArrayOfint[i];
      int m = 0;
      while (m < n) {
        paramArrayOfboolean[paramInt] = paramBoolean;
        m++;
        paramInt++;
      } 
      j += n;
      if (!paramBoolean) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      } 
      i++;
    } 
    return j;
  }
  
  private static ett a(boolean[] paramArrayOfboolean, int paramInt1, int paramInt2, int paramInt3) {
    int i = paramArrayOfboolean.length;
    int j = i + paramInt3;
    int k = Math.max(paramInt1, j);
    paramInt3 = Math.max(1, paramInt2);
    j = k / j;
    paramInt1 = (k - i * j) / 2;
    ett ett = new ett(k, paramInt3);
    paramInt2 = 0;
    while (paramInt2 < i) {
      if (paramArrayOfboolean[paramInt2])
        ett.a(paramInt1, 0, j, paramInt3); 
      paramInt2++;
      paramInt1 += j;
    } 
    return ett;
  }
  
  public int a() {
    return 10;
  }
  
  public final ett a(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    return a(paramString, paramepu, paramInt1, paramInt2, null);
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramString.isEmpty())
      throw new IllegalArgumentException("Found empty contents"); 
    if (paramInt1 < 0 || paramInt2 < 0)
      throw new IllegalArgumentException("Negative size is not allowed. Input: " + paramInt1 + 'x' + paramInt2); 
    int i = a();
    if (paramMap != null) {
      Integer integer = (Integer)paramMap.get(eqa.MARGIN);
      if (integer != null)
        i = integer.intValue(); 
    } 
    return a(a(paramString), paramInt1, paramInt2, i);
  }
  
  public abstract boolean[] a(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */