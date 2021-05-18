public enum apw {
  Desabilitado,
  Disponivel("disponivel"),
  ForaHorario("disponivel"),
  Indisponivel("indisponivel");
  
  private final String value;
  
  static {
    ForaHorario = new apw("ForaHorario", 2, "foraHorario");
    Desabilitado = new apw("Desabilitado", 3, "desabilitado");
    $VALUES = new apw[] { Disponivel, Indisponivel, ForaHorario, Desabilitado };
  }
  
  apw(String paramString1) {
    this.value = paramString1;
  }
  
  public static apw fromString(String paramString) {
    if (paramString != null)
      for (apw apw1 : values()) {
        if (paramString.equalsIgnoreCase(apw1.value))
          return apw1; 
      }  
    return null;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\apw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */