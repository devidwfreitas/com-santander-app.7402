import java.util.Map;

public final class enn<T> extends ekn<T> {
  private final eml<T> a;
  
  private final Map<String, eno> b;
  
  enn(eml<T> parameml, Map<String, eno> paramMap) {
    this.a = parameml;
    this.b = paramMap;
  }
  
  public void a(eps parameps, T paramT) {
    if (paramT == null) {
      parameps.f();
      return;
    } 
    parameps.d();
    try {
      for (eno eno : this.b.values()) {
        if (eno.a(paramT)) {
          parameps.a(eno.h);
          eno.a(parameps, paramT);
        } 
      } 
    } catch (IllegalAccessException illegalAccessException) {
      throw new AssertionError(illegalAccessException);
    } 
    illegalAccessException.e();
  }
  
  public T b(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    T t = this.a.a();
    try {
      paramepo.c();
      while (paramepo.e()) {
        String str = paramepo.g();
        eno eno = this.b.get(str);
        if (eno == null || !eno.j) {
          paramepo.n();
          continue;
        } 
        eno.a(paramepo, t);
      } 
    } catch (IllegalStateException illegalStateException) {
      throw new ekj(illegalStateException);
    } catch (IllegalAccessException illegalAccessException) {
      throw new AssertionError(illegalAccessException);
    } 
    illegalAccessException.d();
    return t;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */