import java.util.List;
import java.util.Map;

public final class eum implements eqk {
  private static final eqo[] a = new eqo[0];
  
  private final eut b = new eut();
  
  private static int a(int[] paramArrayOfint, ett paramett) {
    int j = paramett.f();
    int i = paramArrayOfint[0];
    int k = paramArrayOfint[1];
    while (i < j && paramett.a(i, k))
      i++; 
    if (i == j)
      throw eqh.a(); 
    i -= paramArrayOfint[0];
    if (i == 0)
      throw eqh.a(); 
    return i;
  }
  
  private static ett a(ett paramett) {
    int[] arrayOfInt1 = paramett.d();
    int[] arrayOfInt2 = paramett.e();
    if (arrayOfInt1 == null || arrayOfInt2 == null)
      throw eqh.a(); 
    int j = a(arrayOfInt1, paramett);
    int k = arrayOfInt1[1];
    int i = arrayOfInt2[1];
    int m = arrayOfInt1[0];
    int n = (arrayOfInt2[0] - m + 1) / j;
    int i1 = (i - k + 1) / j;
    if (n <= 0 || i1 <= 0)
      throw eqh.a(); 
    int i2 = j / 2;
    ett ett1 = new ett(n, i1);
    for (i = 0; i < i1; i++) {
      for (int i3 = 0; i3 < n; i3++) {
        if (paramett.a(i3 * j + m + i2, k + i2 + i * j))
          ett1.b(i3, i); 
      } 
    } 
    return ett1;
  }
  
  public eqm a(epw paramepw) {
    return a(paramepw, (Map<epy, ?>)null);
  }
  
  public eqm a(epw paramepw, Map<epy, ?> paramMap) {
    etw etw;
    eqo[] arrayOfEqo;
    if (paramMap != null && paramMap.containsKey(epy.PURE_BARCODE)) {
      ett ett = a(paramepw.c());
      etw = this.b.a(ett);
      arrayOfEqo = a;
    } else {
      ety ety = (new euy(etw.c())).a();
      etw = this.b.a(ety.d());
      arrayOfEqo = ety.e();
    } 
    eqm eqm = new eqm(etw.b(), etw.a(), arrayOfEqo, epu.DATA_MATRIX);
    List<byte[]> list = etw.c();
    if (list != null)
      eqm.a(eqn.BYTE_SEGMENTS, list); 
    String str = etw.d();
    if (str != null)
      eqm.a(eqn.ERROR_CORRECTION_LEVEL, str); 
    return eqm;
  }
  
  public void a() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eum.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */