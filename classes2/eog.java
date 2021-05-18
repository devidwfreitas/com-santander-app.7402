final class eog extends ekn<String> {
  public String a(epo paramepo) {
    epr epr = paramepo.f();
    if (epr == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return (epr == epr.BOOLEAN) ? Boolean.toString(paramepo.i()) : paramepo.h();
  }
  
  public void a(eps parameps, String paramString) {
    parameps.b(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */