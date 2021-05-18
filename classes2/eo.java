public enum eo {
  APP,
  FAILED("failed", false),
  WEB("web", true);
  
  private String code;
  
  private boolean succeeded;
  
  static {
    APP = new eo("APP", 2, "app", true);
    $VALUES = new eo[] { FAILED, WEB, APP };
  }
  
  eo(String paramString1, boolean paramBoolean) {
    this.code = paramString1;
    this.succeeded = paramBoolean;
  }
  
  public String getCode() {
    return this.code;
  }
  
  public boolean isSucceeded() {
    return this.succeeded;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */