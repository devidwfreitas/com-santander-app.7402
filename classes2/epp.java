final class epp extends elr {
  public void a(epo paramepo) {
    if (paramepo instanceof enc) {
      ((enc)paramepo).o();
      return;
    } 
    int j = paramepo.a;
    int i = j;
    if (j == 0)
      i = paramepo.r(); 
    if (i == 13) {
      paramepo.a = 9;
      return;
    } 
    if (i == 12) {
      paramepo.a = 8;
      return;
    } 
    if (i == 14) {
      paramepo.a = 10;
      return;
    } 
    throw new IllegalStateException("Expected a name but was " + paramepo.f() + epo.a(paramepo));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */