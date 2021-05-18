final class eob extends ekn<Number> {
  public Number a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    try {
      long l = paramepo.l();
      return Long.valueOf(l);
    } catch (NumberFormatException numberFormatException) {
      throw new ekj(numberFormatException);
    } 
  }
  
  public void a(eps parameps, Number paramNumber) {
    parameps.a(paramNumber);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */