public enum abs {
  CDB,
  COE,
  CORRETORA,
  FUNDS("FUNDOS", 1),
  LCA("FUNDOS", 1),
  LCI("FUNDOS", 1),
  PENSION("FUNDOS", 1),
  SAVINGS("POUPANÇA", 2);
  
  private int code;
  
  private String name;
  
  static {
    PENSION = new abs("PENSION", 2, "PREVIDÊNCIA", 3);
    CDB = new abs("CDB", 3, "CDB", 4);
    LCI = new abs("LCI", 4, "LCI", 5);
    LCA = new abs("LCA", 5, "LCA", 6);
    COE = new abs("COE", 6, "COE", 7);
    CORRETORA = new abs("CORRETORA", 7, "CORRETORA", 8);
    $VALUES = new abs[] { FUNDS, SAVINGS, PENSION, CDB, LCI, LCA, COE, CORRETORA };
  }
  
  abs(String paramString1, int paramInt1) {
    this.name = paramString1;
    this.code = paramInt1;
  }
  
  public int getCode() {
    return this.code;
  }
  
  public String getName() {
    return this.name;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */