public enum bsk {
  CANCEL,
  ERROR,
  SUCCESS("success");
  
  private final String loggingValue;
  
  static {
    CANCEL = new bsk("CANCEL", 1, "cancel");
    ERROR = new bsk("ERROR", 2, "error");
    $VALUES = new bsk[] { SUCCESS, CANCEL, ERROR };
  }
  
  bsk(String paramString1) {
    this.loggingValue = paramString1;
  }
  
  public String getLoggingValue() {
    return this.loggingValue;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */