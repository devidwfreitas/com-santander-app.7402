public enum ccn {
  OPEN_GRAPH,
  PAGE,
  UNKNOWN("unknown", 0);
  
  public static ccn DEFAULT;
  
  private int intValue;
  
  private String stringValue;
  
  static {
    OPEN_GRAPH = new ccn("OPEN_GRAPH", 1, "open_graph", 1);
    PAGE = new ccn("PAGE", 2, "page", 2);
    $VALUES = new ccn[] { UNKNOWN, OPEN_GRAPH, PAGE };
    DEFAULT = UNKNOWN;
  }
  
  ccn(String paramString1, int paramInt1) {
    this.stringValue = paramString1;
    this.intValue = paramInt1;
  }
  
  public static ccn fromInt(int paramInt) {
    for (ccn ccn1 : values()) {
      if (ccn1.getValue() == paramInt)
        return ccn1; 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */