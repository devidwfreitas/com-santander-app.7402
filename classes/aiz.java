public enum aiz {
  REMANEJAMENTO,
  SALDO("credit-management/v1/balances/");
  
  private String endpoint;
  
  static {
    REMANEJAMENTO = new aiz("REMANEJAMENTO", 1, "limit-transfer/v1/searchCreditLimit/A/3/C/");
    $VALUES = new aiz[] { SALDO, REMANEJAMENTO };
  }
  
  aiz(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public final String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aiz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */