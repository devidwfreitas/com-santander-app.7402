import java.util.concurrent.atomic.AtomicInteger;

final class epj extends ekn<AtomicInteger> {
  public AtomicInteger a(epo paramepo) {
    try {
      return new AtomicInteger(paramepo.m());
    } catch (NumberFormatException numberFormatException) {
      throw new ekj(numberFormatException);
    } 
  }
  
  public void a(eps parameps, AtomicInteger paramAtomicInteger) {
    parameps.a(paramAtomicInteger.get());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */