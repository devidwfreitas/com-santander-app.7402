public final class esw extends etb {
  public esv a(eqm parameqm) {
    if (parameqm.d() == epu.EAN_13) {
      String str = c(parameqm);
      if (str.length() == 13 && (str.startsWith("978") || str.startsWith("979")))
        return new esv(str); 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */