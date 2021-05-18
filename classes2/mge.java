public enum mge {
  INSTANCE;
  
  private kum bankData;
  
  private String codeNameBank;
  
  static {
    $VALUES = new mge[] { INSTANCE };
  }
  
  public kum getBankData() {
    return this.bankData;
  }
  
  public String getCodeNameBank() {
    return this.codeNameBank;
  }
  
  public void setBankData(kum paramkum) {
    this.bankData = paramkum;
  }
  
  public void setCodeNameBank(String paramString) {
    this.codeNameBank = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */