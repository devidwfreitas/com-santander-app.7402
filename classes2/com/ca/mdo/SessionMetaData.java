package com.ca.mdo;

public class SessionMetaData {
  private String header;
  
  private String sessionId;
  
  private int state;
  
  private String status;
  
  public SessionMetaData(String paramString1, String paramString2, int paramInt, String paramString3) {
    this.sessionId = paramString1;
    this.status = paramString2;
    this.state = paramInt;
    this.header = paramString3;
  }
  
  public String getHeader() {
    return this.header;
  }
  
  public String getSessionId() {
    return this.sessionId;
  }
  
  public int getState() {
    return this.state;
  }
  
  public String getStatus() {
    return this.status;
  }
  
  public void setHeader(String paramString) {
    this.header = paramString;
  }
  
  public void setStatus(String paramString) {
    this.status = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\SessionMetaData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */