public enum bmu {
  CUSTOM_APP_EVENTS, MOBILE_INSTALL_EVENT;
  
  static {
    CUSTOM_APP_EVENTS = new bmu("CUSTOM_APP_EVENTS", 1);
    $VALUES = new bmu[] { MOBILE_INSTALL_EVENT, CUSTOM_APP_EVENTS };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */