public enum ccp {
  BOX_COUNT,
  BUTTON,
  STANDARD("standard", 0);
  
  public static ccp DEFAULT;
  
  private int intValue;
  
  private String stringValue;
  
  static {
    BUTTON = new ccp("BUTTON", 1, "button", 1);
    BOX_COUNT = new ccp("BOX_COUNT", 2, "box_count", 2);
    $VALUES = new ccp[] { STANDARD, BUTTON, BOX_COUNT };
    DEFAULT = STANDARD;
  }
  
  ccp(String paramString1, int paramInt1) {
    this.stringValue = paramString1;
    this.intValue = paramInt1;
  }
  
  public static ccp fromInt(int paramInt) {
    for (ccp ccp1 : values()) {
      if (ccp1.getValue() == paramInt)
        return ccp1; 
    } 
    return null;
  }
  
  private int getValue() {
    return this.intValue;
  }
  
  public String toString() {
    return this.stringValue;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */