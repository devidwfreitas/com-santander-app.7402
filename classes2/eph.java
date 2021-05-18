final class eph extends ekn<Number> {
  public Number a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    try {
      short s = (short)paramepo.m();
      return Short.valueOf(s);
    } catch (NumberFormatException numberFormatException) {
      throw new ekj(numberFormatException);
    } 
  }
  
  public void a(eps parameps, Number paramNumber) {
    parameps.a(paramNumber);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */