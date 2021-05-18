public enum jsw {
  B("B"),
  PF("B"),
  PO("B"),
  S("S");
  
  private String indicador;
  
  static {
    PO = new jsw("PO", 2, "PO");
    PF = new jsw("PF", 3, "PF");
    $VALUES = new jsw[] { B, S, PO, PF };
  }
  
  jsw(String paramString1) {
    this.indicador = paramString1;
  }
  
  public String indicador() {
    return this.indicador;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */