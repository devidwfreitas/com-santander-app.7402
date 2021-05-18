package br.com.santander.msgsdk.entities;

import eks;
import java.io.Serializable;

public class ListInbox implements Serializable {
  @eks(a = "applicationId")
  private String applicationId;
  
  @eks(a = "data")
  private DataInbox dataInbox;
  
  @eks(a = "status")
  private String status;
  
  @eks(a = "timestamp")
  private String time;
  
  @eks(a = "userId")
  private String userId;
  
  public String getApplicationId() {
    return this.applicationId;
  }
  
  public DataInbox getDataInbox() {
    return this.dataInbox;
  }
  
  public String getStatus() {
    return this.status;
  }
  
  public String getTime() {
    return this.time;
  }
  
  public String getUserId() {
    return this.userId;
  }
  
  public void setApplicationId(String paramString) {
    this.applicationId = paramString;
  }
  
  public void setDataInbox(DataInbox paramDataInbox) {
    this.dataInbox = paramDataInbox;
  }
  
  public void setStatus(String paramString) {
    this.status = paramString;
  }
  
  public void setTime(String paramString) {
    this.time = paramString;
  }
  
  public void setUserId(String paramString) {
    this.userId = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\entities\ListInbox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */