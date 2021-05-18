public enum jdv {
  MAIOR_RENTABILIDADE,
  MAIOR_VALOR("MAIOR_VALOR"),
  MENOR_RENTABILIDADE("MAIOR_VALOR"),
  MENOR_VALOR("MENOR_VALOR");
  
  private String value;
  
  static {
    MAIOR_RENTABILIDADE = new jdv("MAIOR_RENTABILIDADE", 2, "MAIOR_RENTABILIDADE");
    MENOR_RENTABILIDADE = new jdv("MENOR_RENTABILIDADE", 3, "MENOR_RENTABILIDADE");
    $VALUES = new jdv[] { MAIOR_VALOR, MENOR_VALOR, MAIOR_RENTABILIDADE, MENOR_RENTABILIDADE };
  }
  
  jdv(String paramString1) {
    this.value = paramString1;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jdv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */