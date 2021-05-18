public enum jdh {
  FUNDOS,
  POUPANCA,
  PREVIDENCIA("PREVIDENCIA"),
  RENDA_FIXA("RENDA_FIXA");
  
  private String value;
  
  static {
    FUNDOS = new jdh("FUNDOS", 2, "FUNDOS");
    POUPANCA = new jdh("POUPANCA", 3, "POUPANCA");
    $VALUES = new jdh[] { PREVIDENCIA, RENDA_FIXA, FUNDOS, POUPANCA };
  }
  
  jdh(String paramString1) {
    this.value = paramString1;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jdh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */