public enum bzb implements bnv {
  HASHTAG,
  LINK_SHARE_QUOTES,
  MULTIMEDIA,
  PHOTOS,
  SHARE_DIALOG(20130618),
  VIDEO(20130618);
  
  private int minVersion;
  
  static {
    PHOTOS = new bzb("PHOTOS", 1, 20140204);
    VIDEO = new bzb("VIDEO", 2, 20141028);
    MULTIMEDIA = new bzb("MULTIMEDIA", 3, 20160327);
    HASHTAG = new bzb("HASHTAG", 4, 20160327);
    LINK_SHARE_QUOTES = new bzb("LINK_SHARE_QUOTES", 5, 20160327);
    $VALUES = new bzb[] { SHARE_DIALOG, PHOTOS, VIDEO, MULTIMEDIA, HASHTAG, LINK_SHARE_QUOTES };
  }
  
  bzb(int paramInt1) {
    this.minVersion = paramInt1;
  }
  
  public String getAction() {
    return "com.facebook.platform.action.request.FEED_DIALOG";
  }
  
  public int getMinVersion() {
    return this.minVersion;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */