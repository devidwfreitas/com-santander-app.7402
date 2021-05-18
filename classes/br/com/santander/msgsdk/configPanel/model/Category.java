package br.com.santander.msgsdk.configPanel.model;

public class Category {
  private String alertMessage;
  
  private String code;
  
  private String description;
  
  private boolean membershipStatus;
  
  private String title;
  
  public Category() {}
  
  public Category(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean) {
    this.code = paramString1;
    this.title = paramString2;
    this.description = paramString3;
    this.alertMessage = paramString4;
    this.membershipStatus = paramBoolean;
  }
  
  public String getAlertMessage() {
    return this.alertMessage;
  }
  
  public String getCode() {
    return this.code;
  }
  
  public String getDescription() {
    return this.description;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public boolean isMembershipStatus() {
    return this.membershipStatus;
  }
  
  public void setAlertMessage(String paramString) {
    this.alertMessage = paramString;
  }
  
  public void setCode(String paramString) {
    this.code = paramString;
  }
  
  public void setDescription(String paramString) {
    this.description = paramString;
  }
  
  public void setMembershipStatus(boolean paramBoolean) {
    this.membershipStatus = paramBoolean;
  }
  
  public void setTitle(String paramString) {
    this.title = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\model\Category.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */