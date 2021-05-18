package br.com.santander.msgsdk.util.enums;

public enum StatusMessage {
  DISCARTED,
  OPENED,
  RECEIVED("RECEIVED"),
  REMOVED("RECEIVED");
  
  private final String value;
  
  static {
    OPENED = new StatusMessage("OPENED", 1, "OPENED");
    DISCARTED = new StatusMessage("DISCARTED", 2, "DISCARTED");
    REMOVED = new StatusMessage("REMOVED", 3, "REMOVED");
    $VALUES = new StatusMessage[] { RECEIVED, OPENED, DISCARTED, REMOVED };
  }
  
  StatusMessage(String paramString1) {
    this.value = paramString1;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\enums\StatusMessage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */