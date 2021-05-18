public enum btm {
  AUTOMATIC("automatic", 0),
  DISPLAY_ALWAYS("display_always", 1),
  NEVER_DISPLAY("never_display", 2);
  
  public static btm DEFAULT;
  
  private int intValue;
  
  private String stringValue;
  
  static {
    $VALUES = new btm[] { AUTOMATIC, DISPLAY_ALWAYS, NEVER_DISPLAY };
    DEFAULT = AUTOMATIC;
  }
  
  btm(String paramString1, int paramInt1) {
    this.stringValue = paramString1;
    this.intValue = paramInt1;
  }
  
  public static btm fromInt(int paramInt) {
    for (btm btm1 : values()) {
      if (btm1.getValue() == paramInt)
        return btm1; 
    } 
    return null;
  }
  
  public int getValue() {
    return this.intValue;
  }
  
  public String toString() {
    return this.stringValue;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */