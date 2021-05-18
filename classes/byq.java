public enum byq implements bnv {
  OG_ACTION_DIALOG(20130618);
  
  private int minVersion;
  
  static {
    $VALUES = new byq[] { OG_ACTION_DIALOG };
  }
  
  byq(int paramInt1) {
    this.minVersion = paramInt1;
  }
  
  public String getAction() {
    return "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
  }
  
  public int getMinVersion() {
    return this.minVersion;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */