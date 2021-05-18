import java.nio.charset.Charset;
import java.util.Map;

public final class equ implements eqq {
  private static final Charset a = Charset.forName("ISO-8859-1");
  
  private static ett a(era paramera, int paramInt1, int paramInt2) {
    ett ett1 = paramera.e();
    if (ett1 == null)
      throw new IllegalStateException(); 
    int k = ett1.f();
    int m = ett1.g();
    paramInt1 = Math.max(paramInt1, k);
    int i = Math.max(paramInt2, m);
    int n = Math.min(paramInt1 / k, i / m);
    int j = (paramInt1 - k * n) / 2;
    paramInt2 = (i - m * n) / 2;
    ett ett2 = new ett(paramInt1, i);
    for (paramInt1 = 0; paramInt1 < m; paramInt1++) {
      i = j;
      int i1 = 0;
      while (i1 < k) {
        if (ett1.a(i1, paramInt1))
          ett2.a(i, paramInt2, n, n); 
        i1++;
        i += n;
      } 
      paramInt2 += n;
    } 
    return ett2;
  }
  
  private static ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Charset paramCharset, int paramInt3, int paramInt4) {
    if (paramepu != epu.AZTEC)
      throw new IllegalArgumentException("Can only encode AZTEC, but got " + paramepu); 
    return a(erc.a(paramString.getBytes(paramCharset), paramInt3, paramInt4), paramInt1, paramInt2);
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    return a(paramString, paramepu, paramInt1, paramInt2, null);
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    Number number1;
    int i;
    Number number2;
    String str;
    Charset charset;
    if (paramMap == null) {
      str = null;
    } else {
      str = (String)paramMap.get(eqa.CHARACTER_SET);
    } 
    if (paramMap == null) {
      number2 = null;
    } else {
      number2 = (Number)paramMap.get(eqa.ERROR_CORRECTION);
    } 
    if (paramMap == null) {
      paramMap = null;
    } else {
      number1 = (Number)paramMap.get(eqa.AZTEC_LAYERS);
    } 
    if (str == null) {
      charset = a;
    } else {
      charset = Charset.forName((String)charset);
    } 
    if (number2 == null) {
      i = 33;
    } else {
      i = number2.intValue();
    } 
    if (number1 == null) {
      boolean bool = false;
      return a(paramString, paramepu, paramInt1, paramInt2, charset, i, bool);
    } 
    int j = number1.intValue();
    return a(paramString, paramepu, paramInt1, paramInt2, charset, i, j);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\equ.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */