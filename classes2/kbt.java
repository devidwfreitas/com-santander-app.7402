public enum kbt {
  APTO_TRANSACIONAR(""),
  ATIVAR_CSO(""),
  HABILITAR_APARELHO(""),
  SOLICITAR_CSO("");
  
  private String msg;
  
  static {
    ATIVAR_CSO = new kbt("ATIVAR_CSO", 2, "");
    SOLICITAR_CSO = new kbt("SOLICITAR_CSO", 3, "");
    $VALUES = new kbt[] { APTO_TRANSACIONAR, HABILITAR_APARELHO, ATIVAR_CSO, SOLICITAR_CSO };
  }
  
  kbt(String paramString1) {
    this.msg = paramString1;
  }
  
  public String getMsg() {
    return this.msg;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */