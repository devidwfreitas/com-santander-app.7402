public enum byo implements bnv {
  MESSAGE_DIALOG(20140204),
  PHOTOS(20140324),
  VIDEO(20141218);
  
  private int minVersion;
  
  static {
    $VALUES = new byo[] { MESSAGE_DIALOG, PHOTOS, VIDEO };
  }
  
  byo(int paramInt1) {
    this.minVersion = paramInt1;
  }
  
  public String getAction() {
    return "com.facebook.platform.action.request.MESSAGE_DIALOG";
  }
  
  public int getMinVersion() {
    return this.minVersion;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */