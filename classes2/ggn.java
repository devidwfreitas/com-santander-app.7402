public enum ggn {
  CARTEIRA_DIARIA_INVESTMENT_PORTFOLIO("investment-portfolio/v1/0");
  
  private String endpoint;
  
  static {
    $VALUES = new ggn[] { CARTEIRA_DIARIA_INVESTMENT_PORTFOLIO };
  }
  
  ggn(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ggn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */