public enum bwp implements bnv {
  APP_INVITES_DIALOG(20140701);
  
  private int minVersion;
  
  static {
    $VALUES = new bwp[] { APP_INVITES_DIALOG };
  }
  
  bwp(int paramInt1) {
    this.minVersion = paramInt1;
  }
  
  public String getAction() {
    return "com.facebook.platform.action.request.APPINVITES_DIALOG";
  }
  
  public int getMinVersion() {
    return this.minVersion;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */