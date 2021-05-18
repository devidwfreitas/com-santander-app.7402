public final class etl extends etb {
  public etj a(eqm parameqm) {
    eqm eqm1 = null;
    String str = c(parameqm);
    if (str.startsWith("urlto:") || str.startsWith("URLTO:")) {
      int i = str.indexOf(':', 6);
      if (i >= 0) {
        if (i <= 6) {
          parameqm = eqm1;
          return new etj(str.substring(i + 1), (String)parameqm);
        } 
        String str1 = str.substring(6, i);
        return new etj(str.substring(i + 1), str1);
      } 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */