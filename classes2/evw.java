import java.util.Map;

public final class evw implements eqk {
  private final eqk a;
  
  public evw(eqk parameqk) {
    this.a = parameqk;
  }
  
  private static void a(eqo[] paramArrayOfeqo, int paramInt1, int paramInt2) {
    if (paramArrayOfeqo != null)
      for (int i = 0; i < paramArrayOfeqo.length; i++) {
        eqo eqo1 = paramArrayOfeqo[i];
        paramArrayOfeqo[i] = new eqo(eqo1.a() + paramInt1, eqo1.b() + paramInt2);
      }  
  }
  
  public eqm a(epw paramepw) {
    return a(paramepw, null);
  }
  
  public eqm a(epw paramepw, Map<epy, ?> paramMap) {
    int i = paramepw.a();
    int j = paramepw.b();
    i /= 2;
    j /= 2;
    try {
      return this.a.a(paramepw.a(0, 0, i, j), paramMap);
    } catch (eqh eqh) {
      try {
        eqm eqm = this.a.a(paramepw.a(i, 0, i, j), paramMap);
        a(eqm.c(), i, 0);
        return eqm;
      } catch (eqh eqh1) {
        try {
          eqm eqm = this.a.a(paramepw.a(0, j, i, j), paramMap);
          a(eqm.c(), 0, j);
          return eqm;
        } catch (eqh eqh2) {
          try {
            eqm eqm = this.a.a(paramepw.a(i, j, i, j), paramMap);
            a(eqm.c(), i, j);
            return eqm;
          } catch (eqh eqh3) {
            int k = i / 2;
            int m = j / 2;
            paramepw = paramepw.a(k, m, i, j);
            eqm eqm = this.a.a(paramepw, paramMap);
            a(eqm.c(), k, m);
            return eqm;
          } 
        } 
      } 
    } 
  }
  
  public void a() {
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */