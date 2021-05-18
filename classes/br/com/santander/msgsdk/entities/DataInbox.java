package br.com.santander.msgsdk.entities;

import eks;
import java.io.Serializable;

public class DataInbox implements Serializable {
  @eks(a = "idNotification")
  private int idNotification;
  
  private boolean isSelected;
  
  @eks(a = "message")
  private String message;
  
  @eks(a = "metadata")
  private MetaDataInbox metaDataInbox;
  
  @eks(a = "title")
  private String title;
  
  public int getIdNotification() {
    return this.idNotification;
  }
  
  public String getMessage() {
    return this.message;
  }
  
  public MetaDataInbox getMetaDataInbox() {
    return this.metaDataInbox;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public boolean isSelected() {
    return this.isSelected;
  }
  
  public void setIdNotification(int paramInt) {
    this.idNotification = paramInt;
  }
  
  public void setMessage(String paramString) {
    this.message = paramString;
  }
  
  public void setMetaDataInbox(MetaDataInbox paramMetaDataInbox) {
    this.metaDataInbox = paramMetaDataInbox;
  }
  
  public void setSelected(boolean paramBoolean) {
    this.isSelected = paramBoolean;
  }
  
  public void setTitle(String paramString) {
    this.title = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\entities\DataInbox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */