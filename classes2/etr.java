public final class etr extends etb {
  public etq a(eqm parameqm) {
    String str = c(parameqm);
    if (str.startsWith("WIFI:")) {
      String str1 = b("S:", str, ';', false);
      if (str1 != null && !str1.isEmpty()) {
        String str4 = b("P:", str, ';', false);
        String str3 = b("T:", str, ';', false);
        String str2 = str3;
        if (str3 == null)
          str2 = "nopass"; 
        return new etq(str2, str1, str4, Boolean.parseBoolean(b("H:", str, ';', false)));
      } 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */