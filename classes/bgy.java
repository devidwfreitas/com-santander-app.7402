public enum bgy {
  CHROME_CUSTOM_TAB,
  CLIENT_TOKEN,
  DEVICE_AUTH,
  FACEBOOK_APPLICATION_NATIVE,
  FACEBOOK_APPLICATION_SERVICE,
  FACEBOOK_APPLICATION_WEB,
  NONE(false),
  TEST_USER(false),
  WEB_VIEW(false);
  
  private final boolean canExtendToken;
  
  static {
    FACEBOOK_APPLICATION_WEB = new bgy("FACEBOOK_APPLICATION_WEB", 1, true);
    FACEBOOK_APPLICATION_NATIVE = new bgy("FACEBOOK_APPLICATION_NATIVE", 2, true);
    FACEBOOK_APPLICATION_SERVICE = new bgy("FACEBOOK_APPLICATION_SERVICE", 3, true);
    WEB_VIEW = new bgy("WEB_VIEW", 4, true);
    CHROME_CUSTOM_TAB = new bgy("CHROME_CUSTOM_TAB", 5, true);
    TEST_USER = new bgy("TEST_USER", 6, true);
    CLIENT_TOKEN = new bgy("CLIENT_TOKEN", 7, true);
    DEVICE_AUTH = new bgy("DEVICE_AUTH", 8, true);
    $VALUES = new bgy[] { NONE, FACEBOOK_APPLICATION_WEB, FACEBOOK_APPLICATION_NATIVE, FACEBOOK_APPLICATION_SERVICE, WEB_VIEW, CHROME_CUSTOM_TAB, TEST_USER, CLIENT_TOKEN, DEVICE_AUTH };
  }
  
  bgy(boolean paramBoolean) {
    this.canExtendToken = paramBoolean;
  }
  
  boolean canExtendToken() {
    return this.canExtendToken;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */