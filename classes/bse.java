public enum bse {
  DEVICE_AUTH,
  KATANA_ONLY,
  NATIVE_ONLY,
  NATIVE_WITH_FALLBACK(true, true, true, false, true, true),
  WEB_ONLY(true, true, true, false, true, true),
  WEB_VIEW_ONLY(true, true, true, false, true, true);
  
  private final boolean allowsCustomTabAuth;
  
  private final boolean allowsDeviceAuth;
  
  private final boolean allowsFacebookLiteAuth;
  
  private final boolean allowsGetTokenAuth;
  
  private final boolean allowsKatanaAuth;
  
  private final boolean allowsWebViewAuth;
  
  static {
    NATIVE_ONLY = new bse("NATIVE_ONLY", 1, true, true, false, false, false, true);
    KATANA_ONLY = new bse("KATANA_ONLY", 2, false, true, false, false, false, false);
    WEB_ONLY = new bse("WEB_ONLY", 3, false, false, true, false, true, false);
    WEB_VIEW_ONLY = new bse("WEB_VIEW_ONLY", 4, false, false, true, false, false, false);
    DEVICE_AUTH = new bse("DEVICE_AUTH", 5, false, false, false, true, false, false);
    $VALUES = new bse[] { NATIVE_WITH_FALLBACK, NATIVE_ONLY, KATANA_ONLY, WEB_ONLY, WEB_VIEW_ONLY, DEVICE_AUTH };
  }
  
  bse(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6) {
    this.allowsGetTokenAuth = paramBoolean1;
    this.allowsKatanaAuth = paramBoolean2;
    this.allowsWebViewAuth = paramBoolean3;
    this.allowsDeviceAuth = paramBoolean4;
    this.allowsCustomTabAuth = paramBoolean5;
    this.allowsFacebookLiteAuth = paramBoolean6;
  }
  
  public boolean allowsCustomTabAuth() {
    return this.allowsCustomTabAuth;
  }
  
  public boolean allowsDeviceAuth() {
    return this.allowsDeviceAuth;
  }
  
  public boolean allowsFacebookLiteAuth() {
    return this.allowsFacebookLiteAuth;
  }
  
  public boolean allowsGetTokenAuth() {
    return this.allowsGetTokenAuth;
  }
  
  public boolean allowsKatanaAuth() {
    return this.allowsKatanaAuth;
  }
  
  public boolean allowsWebViewAuth() {
    return this.allowsWebViewAuth;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */