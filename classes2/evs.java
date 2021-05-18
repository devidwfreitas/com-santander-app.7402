import java.util.Map;

public final class evs implements eqk {
  private static final eqo[] a = new eqo[0];
  
  private static final int b = 30;
  
  private static final int c = 33;
  
  private final evv d = new evv();
  
  private static ett a(ett paramett) {
    int[] arrayOfInt = paramett.c();
    if (arrayOfInt == null)
      throw eqh.a(); 
    int j = arrayOfInt[0];
    int k = arrayOfInt[1];
    int m = arrayOfInt[2];
    int n = arrayOfInt[3];
    ett ett1 = new ett(30, 33);
    for (int i = 0; i < 33; i++) {
      int i2 = (i * n + n / 2) / 33;
      for (int i1 = 0; i1 < 30; i1++) {
        if (paramett.a((i1 * m + m / 2 + (i & 0x1) * m / 2) / 30 + j, k + i2))
          ett1.b(i1, i); 
      } 
    } 
    return ett1;
  }
  
  public eqm a(epw paramepw) {
    return a(paramepw, null);
  }
  
  public eqm a(epw paramepw, Map<epy, ?> paramMap) {
    if (paramMap != null && paramMap.containsKey(epy.PURE_BARCODE)) {
      ett ett = a(paramepw.c());
      etw etw = this.d.a(ett, paramMap);
      eqo[] arrayOfEqo = a;
      eqm eqm = new eqm(etw.b(), etw.a(), arrayOfEqo, epu.MAXICODE);
      String str = etw.d();
      if (str != null)
        eqm.a(eqn.ERROR_CORRECTION_LEVEL, str); 
      return eqm;
    } 
    throw eqh.a();
  }
  
  public void a() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */