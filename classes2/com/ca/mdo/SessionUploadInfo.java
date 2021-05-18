package com.ca.mdo;

public class SessionUploadInfo {
  private int eventCounts;
  
  private String sessionAcceptanceHeaderValue;
  
  private String sessionId;
  
  private int statusCode;
  
  public SessionUploadInfo(String paramString, int paramInt) {
    this.sessionId = paramString;
    this.eventCounts = paramInt;
  }
  
  public int getEventCounts() {
    return this.eventCounts;
  }
  
  public String getSessionAcceptanceHeaderValue() {
    return this.sessionAcceptanceHeaderValue;
  }
  
  public String getSessionId() {
    return this.sessionId;
  }
  
  public int getStatusCode() {
    return this.statusCode;
  }
  
  public void setEventCounts(int paramInt) {
    this.eventCounts = paramInt;
  }
  
  public void setSessionAcceptanceHeaderValue(String paramString) {
    this.sessionAcceptanceHeaderValue = paramString;
  }
  
  public void setStatusCode(int paramInt) {
    this.statusCode = paramInt;
  }
  
  public String toString() {
    return "SessionUploadInfo{sessionId='" + this.sessionId + '\'' + ", statusCode=" + this.statusCode + ", sessionAcceptanceHeaderValue='" + this.sessionAcceptanceHeaderValue + '\'' + ", eventCounts=" + this.eventCounts + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\SessionUploadInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */