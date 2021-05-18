public enum jmt {
  LOCALIZADOR_OBTER_AGENCIAS("institucional/v1/coordenates");
  
  private String endpoint;
  
  static {
    $VALUES = new jmt[] { LOCALIZADOR_OBTER_AGENCIAS };
  }
  
  jmt(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jmt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */