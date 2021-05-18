public class gkt {
  @ekq
  @eks(a = "action")
  private String action;
  
  @ekq
  @eks(a = "code")
  private String code;
  
  @ekq
  @eks(a = "message")
  private String message;
  
  public gkt() {}
  
  public gkt(String paramString1, String paramString2, String paramString3) {
    this.action = paramString1;
    this.code = paramString2;
    this.message = paramString3;
  }
  
  public String getAction() {
    return this.action;
  }
  
  public String getCode() {
    return this.code;
  }
  
  public String getMessage() {
    return this.message;
  }
  
  public void setAction(String paramString) {
    this.action = paramString;
  }
  
  public void setCode(String paramString) {
    this.code = paramString;
  }
  
  public void setMessage(String paramString) {
    this.message = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gkt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */