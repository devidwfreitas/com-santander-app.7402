public final class ete extends etb {
  public etd a(eqm parameqm) {
    String str1 = c(parameqm);
    if (!str1.startsWith("smsto:") && !str1.startsWith("SMSTO:") && !str1.startsWith("mmsto:") && !str1.startsWith("MMSTO:"))
      return null; 
    String str2 = str1.substring(6);
    int i = str2.indexOf(':');
    if (i >= 0) {
      str1 = str2.substring(i + 1);
      str2 = str2.substring(0, i);
      return new etd(str2, null, null, str1);
    } 
    str1 = null;
    return new etd(str2, null, null, str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ete.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */