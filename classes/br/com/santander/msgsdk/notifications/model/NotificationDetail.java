package br.com.santander.msgsdk.notifications.model;

import java.util.ArrayList;
import java.util.List;

public class NotificationDetail {
  private String expirationDate;
  
  private String sentDate;
  
  private boolean statusExcluded = false;
  
  private boolean statusRead = false;
  
  private String stimulumId;
  
  private String stimulumType;
  
  private String text;
  
  private String timestamp;
  
  private String title;
  
  private String url;
  
  private String uuid;
  
  public static List<NotificationDetail> getList() {
    ArrayList<NotificationDetail> arrayList = new ArrayList();
    for (int i = 0; i < 20; i++) {
      NotificationDetail notificationDetail = new NotificationDetail();
      notificationDetail.setSentDate("20170909222222");
      if (i % 2 == 0) {
        notificationDetail.setExpirationDate("20170922222222");
        notificationDetail.setStatusRead(true);
      } 
      notificationDetail.setTitle("Title " + i);
      notificationDetail.setText("Description " + i);
      arrayList.add(notificationDetail);
    } 
    return arrayList;
  }
  
  public String getExpirationDate() {
    return this.expirationDate;
  }
  
  public String getSearchText() {
    return this.title.concat(" " + this.text);
  }
  
  public String getSentDate() {
    return this.sentDate;
  }
  
  public String getStimulumId() {
    return this.stimulumId;
  }
  
  public String getStimulumType() {
    return this.stimulumType;
  }
  
  public String getText() {
    return this.text;
  }
  
  public String getTimestamp() {
    return this.timestamp;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public String getUrl() {
    return this.url;
  }
  
  public String getUuid() {
    return this.uuid;
  }
  
  public boolean isStatusExcluded() {
    return this.statusExcluded;
  }
  
  public boolean isStatusRead() {
    return this.statusRead;
  }
  
  public void setExpirationDate(String paramString) {
    this.expirationDate = paramString;
  }
  
  public void setSentDate(String paramString) {
    this.sentDate = paramString;
  }
  
  public void setStatusExcluded(boolean paramBoolean) {
    this.statusExcluded = paramBoolean;
  }
  
  public void setStatusRead(boolean paramBoolean) {
    this.statusRead = paramBoolean;
  }
  
  public void setStimulumId(String paramString) {
    this.stimulumId = paramString;
  }
  
  public void setStimulumType(String paramString) {
    this.stimulumType = paramString;
  }
  
  public void setText(String paramString) {
    this.text = paramString;
  }
  
  public void setTimestamp(String paramString) {
    this.timestamp = paramString;
  }
  
  public void setTitle(String paramString) {
    this.title = paramString;
  }
  
  public void setUrl(String paramString) {
    this.url = paramString;
  }
  
  public void setUuid(String paramString) {
    this.uuid = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\model\NotificationDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */