public enum gvg {
  APLICACAO_CDB,
  APLICACAO_FUNDOS,
  APLICACAO_POUPANCA,
  FATURA_CARTAO,
  PAGAMENTO_CONTAS,
  PAGAMENTO_TITULO,
  REAPLICACAO_FUNDOS,
  REGARGA_CELULAR,
  RESGATE_PARCIAL_CDB,
  RESGATE_PARCIAL_FUNDOS,
  RESGATE_PARCIAL_POUPANCA,
  RESGATE_TOTAL_CDB,
  RESGATE_TOTAL_FUNDOS,
  RESGATE_TOTAL_POUPANCA,
  TRANSFERENCIA_DOC_D,
  TRANSFERENCIA_DOC_E,
  TRANSFERENCIA_ENTRE_CONTAS(1),
  TRANSFERENCIA_TED(1);
  
  private final int valor;
  
  static {
    APLICACAO_POUPANCA = new gvg("APLICACAO_POUPANCA", 1, 2);
    RESGATE_PARCIAL_POUPANCA = new gvg("RESGATE_PARCIAL_POUPANCA", 2, 3);
    RESGATE_TOTAL_POUPANCA = new gvg("RESGATE_TOTAL_POUPANCA", 3, 4);
    FATURA_CARTAO = new gvg("FATURA_CARTAO", 4, 5);
    APLICACAO_FUNDOS = new gvg("APLICACAO_FUNDOS", 5, 6);
    REAPLICACAO_FUNDOS = new gvg("REAPLICACAO_FUNDOS", 6, 7);
    RESGATE_PARCIAL_FUNDOS = new gvg("RESGATE_PARCIAL_FUNDOS", 7, 8);
    RESGATE_TOTAL_FUNDOS = new gvg("RESGATE_TOTAL_FUNDOS", 8, 9);
    PAGAMENTO_CONTAS = new gvg("PAGAMENTO_CONTAS", 9, 12);
    REGARGA_CELULAR = new gvg("REGARGA_CELULAR", 10, 34);
    PAGAMENTO_TITULO = new gvg("PAGAMENTO_TITULO", 11, 14);
    TRANSFERENCIA_DOC_D = new gvg("TRANSFERENCIA_DOC_D", 12, 15);
    TRANSFERENCIA_DOC_E = new gvg("TRANSFERENCIA_DOC_E", 13, 16);
    TRANSFERENCIA_TED = new gvg("TRANSFERENCIA_TED", 14, 18);
    APLICACAO_CDB = new gvg("APLICACAO_CDB", 15, 24);
    RESGATE_PARCIAL_CDB = new gvg("RESGATE_PARCIAL_CDB", 16, 25);
    RESGATE_TOTAL_CDB = new gvg("RESGATE_TOTAL_CDB", 17, 26);
    $VALUES = new gvg[] { 
        TRANSFERENCIA_ENTRE_CONTAS, APLICACAO_POUPANCA, RESGATE_PARCIAL_POUPANCA, RESGATE_TOTAL_POUPANCA, FATURA_CARTAO, APLICACAO_FUNDOS, REAPLICACAO_FUNDOS, RESGATE_PARCIAL_FUNDOS, RESGATE_TOTAL_FUNDOS, PAGAMENTO_CONTAS, 
        REGARGA_CELULAR, PAGAMENTO_TITULO, TRANSFERENCIA_DOC_D, TRANSFERENCIA_DOC_E, TRANSFERENCIA_TED, APLICACAO_CDB, RESGATE_PARCIAL_CDB, RESGATE_TOTAL_CDB };
  }
  
  gvg(int paramInt1) {
    this.valor = paramInt1;
  }
  
  public int getValor() {
    return this.valor;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */