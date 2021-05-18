public enum jdk {
  APLICAR("Aplicar"),
  CANCELAR("Aplicar"),
  EXTRATO("Aplicar"),
  REAPLICAR("Aplicar"),
  RESGATAR("Aplicar");
  
  private String label;
  
  static {
    EXTRATO = new jdk("EXTRATO", 2, "Extrato");
    CANCELAR = new jdk("CANCELAR", 3, "Cancelar");
    RESGATAR = new jdk("RESGATAR", 4, "Resgatar");
    $VALUES = new jdk[] { APLICAR, REAPLICAR, EXTRATO, CANCELAR, RESGATAR };
  }
  
  jdk(String paramString1) {
    this.label = paramString1;
  }
  
  public String label() {
    return this.label;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jdk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */