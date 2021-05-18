import java.math.BigInteger;

final class eoi extends ekn<BigInteger> {
  public BigInteger a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    try {
      return new BigInteger(paramepo.h());
    } catch (NumberFormatException numberFormatException) {
      throw new ekj(numberFormatException);
    } 
  }
  
  public void a(eps parameps, BigInteger paramBigInteger) {
    parameps.a(paramBigInteger);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eoi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */