public enum byt implements bnv {
  OG_MESSAGE_DIALOG(20140204);
  
  private int minVersion;
  
  static {
    $VALUES = new byt[] { OG_MESSAGE_DIALOG };
  }
  
  byt(int paramInt1) {
    this.minVersion = paramInt1;
  }
  
  public String getAction() {
    return "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
  }
  
  public int getMinVersion() {
    return this.minVersion;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */