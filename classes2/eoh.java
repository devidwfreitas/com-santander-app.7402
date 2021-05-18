import java.math.BigDecimal;

final class eoh extends ekn<BigDecimal> {
  public BigDecimal a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    try {
      return new BigDecimal(paramepo.h());
    } catch (NumberFormatException numberFormatException) {
      throw new ekj(numberFormatException);
    } 
  }
  
  public void a(eps parameps, BigDecimal paramBigDecimal) {
    parameps.a(paramBigDecimal);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eoh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */