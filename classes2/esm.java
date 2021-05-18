public final class esm extends esh {
  public etj a(eqm parameqm) {
    String str = parameqm.a();
    if (str.startsWith("MEBKM:")) {
      String str1 = b("TITLE:", str, true);
      String[] arrayOfString = a("URL:", str, true);
      if (arrayOfString != null) {
        String str2 = arrayOfString[0];
        if (etk.a(str2))
          return new etj(str2, str1); 
      } 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */