public enum abq {
  CALCULO_RENTABILIDADE,
  CDB_PROGRESSIVO,
  CONSULTAR_SUBPRODUTOS,
  DATA_AGENDAMENTO,
  DETALHE_INVESTIMENTO,
  EFETIVAR_APLICACAO,
  EFETIVAR_RESGATE,
  HOLIDAYS,
  MANTER_CARRINHO,
  NOTAS_NEGOCIACAO,
  PORTIFOLIO,
  RECOMENDACAO,
  SALDO_CONTA_CORRENTE,
  SUB_CARACTERISTICAS("individual-investment/v1/product/subproduct-characteristics"),
  SUB_DETALHE_INVESTIMENTO("individual-investment/v1/product/subproduct-characteristics"),
  TERMO_ACEITE("individual-investment/v1/product/subproduct-characteristics"),
  TERMO_RECUSA_MOCK("individual-investment/v1/product/subproduct-characteristics"),
  USER_INFO("individual-investment/v1/profile/customer-status"),
  VALIDACAO_CONSULTIVA_APLICACAO("individual-investment/v1/profile/customer-status"),
  VALIDACAO_CONSULTIVA_RESGATE("individual-investment/v1/profile/customer-status");
  
  private String endpoint;
  
  static {
    CDB_PROGRESSIVO = new abq("CDB_PROGRESSIVO", 2, "individual-investment/v1/product/progressive-cdb-remuneration-tracks");
    SALDO_CONTA_CORRENTE = new abq("SALDO_CONTA_CORRENTE", 3, "checkingAccount/v1/balance");
    DATA_AGENDAMENTO = new abq("DATA_AGENDAMENTO", 4, "individual-investment/v1/product/next-schedule-date");
    PORTIFOLIO = new abq("PORTIFOLIO", 5, "individual-investment/v1/customer-portfolio/consolidated-position");
    CONSULTAR_SUBPRODUTOS = new abq("CONSULTAR_SUBPRODUTOS", 6, "individual-investment/v1/profile/subproducts");
    MANTER_CARRINHO = new abq("MANTER_CARRINHO", 7, "individual-investment/v1/product/keep-cart-purchase");
    TERMO_ACEITE = new abq("TERMO_ACEITE", 8, "individual-investment/v1/product/consult-term-adherence");
    CALCULO_RENTABILIDADE = new abq("CALCULO_RENTABILIDADE", 9, "individual-investment/v1/product/time-deposit-calculate");
    VALIDACAO_CONSULTIVA_APLICACAO = new abq("VALIDACAO_CONSULTIVA_APLICACAO", 10, "individual-investment/v1/product/consult-contracting");
    VALIDACAO_CONSULTIVA_RESGATE = new abq("VALIDACAO_CONSULTIVA_RESGATE", 11, "individual-investment/v1/product/consult-withdraw");
    EFETIVAR_APLICACAO = new abq("EFETIVAR_APLICACAO", 12, "individual-investment/v1/product/hiring-effective");
    EFETIVAR_RESGATE = new abq("EFETIVAR_RESGATE", 13, "individual-investment/v1/product/withdraw-effective");
    NOTAS_NEGOCIACAO = new abq("NOTAS_NEGOCIACAO", 14, "individual-investment/v1/product/generate-note");
    RECOMENDACAO = new abq("RECOMENDACAO", 15, "individual-investment/v1/profile/investment-recommendation");
    DETALHE_INVESTIMENTO = new abq("DETALHE_INVESTIMENTO", 16, "individual-investment/v1/customer-portfolio/investment-detail");
    HOLIDAYS = new abq("HOLIDAYS", 17, "individual-investment/v1/consultHolidays");
    SUB_DETALHE_INVESTIMENTO = new abq("SUB_DETALHE_INVESTIMENTO", 18, "individual-investment/v1/customer-portfolio/consolidated-position");
    TERMO_RECUSA_MOCK = new abq("TERMO_RECUSA_MOCK", 19, "consultarTermosRecusa");
    $VALUES = new abq[] { 
        SUB_CARACTERISTICAS, USER_INFO, CDB_PROGRESSIVO, SALDO_CONTA_CORRENTE, DATA_AGENDAMENTO, PORTIFOLIO, CONSULTAR_SUBPRODUTOS, MANTER_CARRINHO, TERMO_ACEITE, CALCULO_RENTABILIDADE, 
        VALIDACAO_CONSULTIVA_APLICACAO, VALIDACAO_CONSULTIVA_RESGATE, EFETIVAR_APLICACAO, EFETIVAR_RESGATE, NOTAS_NEGOCIACAO, RECOMENDACAO, DETALHE_INVESTIMENTO, HOLIDAYS, SUB_DETALHE_INVESTIMENTO, TERMO_RECUSA_MOCK };
  }
  
  abq(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */