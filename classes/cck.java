public enum cck {
  CENTER("center", 0),
  LEFT("left", 1),
  RIGHT("right", 2);
  
  public static cck DEFAULT;
  
  private int intValue;
  
  private String stringValue;
  
  static {
    $VALUES = new cck[] { CENTER, LEFT, RIGHT };
    DEFAULT = CENTER;
  }
  
  cck(String paramString1, int paramInt1) {
    this.stringValue = paramString1;
    this.intValue = paramInt1;
  }
  
  public static cck fromInt(int paramInt) {
    for (cck cck1 : values()) {
      if (cck1.getValue() == paramInt)
        return cck1; 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */