public final class eta extends etb {
  public esz a(eqm parameqm) {
    epu epu = parameqm.d();
    if (epu == epu.UPC_A || epu == epu.UPC_E || epu == epu.EAN_8 || epu == epu.EAN_13) {
      String str = c(parameqm);
      if (a(str, str.length())) {
        if (epu == epu.UPC_E && str.length() == 8) {
          String str2 = exf.b(str);
          return new esz(str, str2);
        } 
        String str1 = str;
        return new esz(str, str1);
      } 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */