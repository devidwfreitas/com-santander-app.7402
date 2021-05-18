public final class eth extends etb {
  public etg a(eqm parameqm) {
    String str1;
    String str2 = c(parameqm);
    if (!str2.startsWith("tel:") && !str2.startsWith("TEL:"))
      return null; 
    if (str2.startsWith("TEL:")) {
      str1 = "tel:" + str2.substring(4);
    } else {
      str1 = str2;
    } 
    int i = str2.indexOf('?', 4);
    if (i < 0) {
      str2 = str2.substring(4);
      return new etg(str2, str1, null);
    } 
    str2 = str2.substring(4, i);
    return new etg(str2, str1, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */