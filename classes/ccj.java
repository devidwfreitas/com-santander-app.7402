public enum ccj {
  BOTTOM("bottom", 0),
  INLINE("inline", 1),
  TOP("top", 2);
  
  public static ccj DEFAULT;
  
  private int intValue;
  
  private String stringValue;
  
  static {
    $VALUES = new ccj[] { BOTTOM, INLINE, TOP };
    DEFAULT = BOTTOM;
  }
  
  ccj(String paramString1, int paramInt1) {
    this.stringValue = paramString1;
    this.intValue = paramInt1;
  }
  
  public static ccj fromInt(int paramInt) {
    for (ccj ccj1 : values()) {
      if (ccj1.getValue() == paramInt)
        return ccj1; 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */