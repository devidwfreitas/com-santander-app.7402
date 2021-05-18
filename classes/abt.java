public enum abt {
  ANNUAL_ADMIN_FEE,
  ANOTHER_DEADLINE_INDEX,
  DEADLINES_LIST,
  INVESTMENT_HOUR_LIMIT,
  INVESTMENT_SCHEDULING_INDEX,
  MAX_DEADLINE,
  MIN_DEADLINE,
  MIN_INITIAL_INVESTMENT,
  MIN_INJECTION("valorMinimoAporte"),
  MIN_MONTHLY_SCHEDULE("valorMinimoAporte"),
  MONTHLY_SCHEDULE_INDEX("valorMinimoAporte"),
  PROFITABILITY("valorMinimoAporte"),
  PROGRESSIVE_INDEX("valorMinimoAporte"),
  REDEMPTION_TYPE("valorMinimoAporte");
  
  private String name;
  
  static {
    MIN_INITIAL_INVESTMENT = new abt("MIN_INITIAL_INVESTMENT", 1, "valorMinimoInvestimentoInicial");
    MIN_MONTHLY_SCHEDULE = new abt("MIN_MONTHLY_SCHEDULE", 2, "valorMinimoProgramacaoMensal");
    PROFITABILITY = new abt("PROFITABILITY", 3, "rentabilidade");
    PROGRESSIVE_INDEX = new abt("PROGRESSIVE_INDEX", 4, "indicadorProgressivo");
    MONTHLY_SCHEDULE_INDEX = new abt("MONTHLY_SCHEDULE_INDEX", 5, "indicadorProgramacaoMensal");
    REDEMPTION_TYPE = new abt("REDEMPTION_TYPE", 6, "tipoResgate");
    INVESTMENT_SCHEDULING_INDEX = new abt("INVESTMENT_SCHEDULING_INDEX", 7, "indicadorAgendamentoAplicacao");
    INVESTMENT_HOUR_LIMIT = new abt("INVESTMENT_HOUR_LIMIT", 8, "horarioLimiteInvestimento");
    ANNUAL_ADMIN_FEE = new abt("ANNUAL_ADMIN_FEE", 9, "taxaAdministracaoAnual");
    ANOTHER_DEADLINE_INDEX = new abt("ANOTHER_DEADLINE_INDEX", 10, "indicadorOutroPrazo");
    MAX_DEADLINE = new abt("MAX_DEADLINE", 11, "prazoMaximo");
    MIN_DEADLINE = new abt("MIN_DEADLINE", 12, "prazoMinimo");
    DEADLINES_LIST = new abt("DEADLINES_LIST", 13, "listaPrazos");
    $VALUES = new abt[] { 
        MIN_INJECTION, MIN_INITIAL_INVESTMENT, MIN_MONTHLY_SCHEDULE, PROFITABILITY, PROGRESSIVE_INDEX, MONTHLY_SCHEDULE_INDEX, REDEMPTION_TYPE, INVESTMENT_SCHEDULING_INDEX, INVESTMENT_HOUR_LIMIT, ANNUAL_ADMIN_FEE, 
        ANOTHER_DEADLINE_INDEX, MAX_DEADLINE, MIN_DEADLINE, DEADLINES_LIST };
  }
  
  abt(String paramString1) {
    this.name = paramString1;
  }
  
  public String getName() {
    return this.name;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */