public enum ccy {
  AUTOMATIC, FEED, NATIVE, WEB;
  
  static {
    FEED = new ccy("FEED", 3);
    $VALUES = new ccy[] { AUTOMATIC, NATIVE, WEB, FEED };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */