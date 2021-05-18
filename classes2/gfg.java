public enum gfg {
  CONTAS_PAGAR_RECEBER,
  CONTA_CORRENTE("Conta-corrente"),
  DERIVATIVOS("Conta-corrente"),
  FUNDOS("Conta-corrente"),
  RENDA_FIXA("Renda Fixa"),
  RENDA_VARIAVEL("Renda Fixa"),
  RENTABILIDADE("Renda Fixa");
  
  private String name;
  
  static {
    FUNDOS = new gfg("FUNDOS", 2, "Fundos");
    RENDA_VARIAVEL = new gfg("RENDA_VARIAVEL", 3, "Renda Variável");
    DERIVATIVOS = new gfg("DERIVATIVOS", 4, "Derivativos");
    CONTAS_PAGAR_RECEBER = new gfg("CONTAS_PAGAR_RECEBER", 5, "Contas a pagar/receber");
    RENTABILIDADE = new gfg("RENTABILIDADE", 6, "Rentabilidade");
    $VALUES = new gfg[] { CONTA_CORRENTE, RENDA_FIXA, FUNDOS, RENDA_VARIAVEL, DERIVATIVOS, CONTAS_PAGAR_RECEBER, RENTABILIDADE };
  }
  
  gfg(String paramString1) {
    this.name = paramString1;
  }
  
  public String getName() {
    return this.name;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gfg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */