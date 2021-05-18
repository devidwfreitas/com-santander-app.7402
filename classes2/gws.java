public enum gws {
  ACORDO,
  ANTECIPACAO_13,
  ANTECIPACAO_IR,
  CAMBIO,
  CARRINHO_POUPANCA,
  CDB_FUNCIONARIO,
  CDB_RECOMPENSA("CDB_RECOMPENSA"),
  CDB_VG_DIGITAL("CDB_RECOMPENSA"),
  CP("CDB_RECOMPENSA"),
  FUNDOS("CDB_RECOMPENSA"),
  PARC_FATURA("CDB_RECOMPENSA"),
  POUPANCA("POUPANCA"),
  PREVIDENCIA("POUPANCA");
  
  private String conteudo;
  
  static {
    CAMBIO = new gws("CAMBIO", 2, "CAMBIO");
    PARC_FATURA = new gws("PARC_FATURA", 3, "PARC_FATURA");
    CP = new gws("CP", 4, "CP");
    ANTECIPACAO_IR = new gws("ANTECIPACAO_IR", 5, "ANTECIPACAO_IR");
    CDB_FUNCIONARIO = new gws("CDB_FUNCIONARIO", 6, "CDB_FUNCIONARIO");
    PREVIDENCIA = new gws("PREVIDENCIA", 7, "PREVIDENCIA");
    ANTECIPACAO_13 = new gws("ANTECIPACAO_13", 8, "ANTECIPACAO_13");
    CARRINHO_POUPANCA = new gws("CARRINHO_POUPANCA", 9, "CARRINHO_POUPANCA");
    CDB_VG_DIGITAL = new gws("CDB_VG_DIGITAL", 10, "CDB_VG_DIGITAL");
    FUNDOS = new gws("FUNDOS", 11, "FUNDOS");
    ACORDO = new gws("ACORDO", 12, "ACORDO");
    $VALUES = new gws[] { 
        CDB_RECOMPENSA, POUPANCA, CAMBIO, PARC_FATURA, CP, ANTECIPACAO_IR, CDB_FUNCIONARIO, PREVIDENCIA, ANTECIPACAO_13, CARRINHO_POUPANCA, 
        CDB_VG_DIGITAL, FUNDOS, ACORDO };
  }
  
  gws(String paramString1) {
    this.conteudo = paramString1;
  }
  
  public String conteudo() {
    return this.conteudo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gws.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */