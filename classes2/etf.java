public final class etf extends etb {
  public eso a(eqm parameqm) {
    String str1 = c(parameqm);
    if (!str1.startsWith("smtp:") && !str1.startsWith("SMTP:"))
      return null; 
    str1 = str1.substring(5);
    int i = str1.indexOf(':');
    if (i >= 0) {
      String str4 = str1.substring(i + 1);
      str1 = str1.substring(0, i);
      i = str4.indexOf(':');
      if (i >= 0) {
        String str = str4.substring(i + 1);
        str4 = str4.substring(0, i);
        return new eso(new String[] { str1 }, null, null, str4, str);
      } 
      String str5 = null;
      return new eso(new String[] { str1 }, null, null, str4, str5);
    } 
    String str3 = null;
    String str2 = null;
    return new eso(new String[] { str1 }, null, null, str2, str3);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */