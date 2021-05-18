package br.com.santander.msgsdk.entities;

import eks;
import java.io.Serializable;

public class MetaDataInbox implements Serializable {
  @eks(a = "actionId")
  private String actionId;
  
  @eks(a = "pushId")
  private String pushId;
  
  public String getActionId() {
    return this.actionId;
  }
  
  public String getPushId() {
    return this.pushId;
  }
  
  public void setActionId(String paramString) {
    this.actionId = paramString;
  }
  
  public void setPushId(String paramString) {
    this.pushId = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\entities\MetaDataInbox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */