public enum cga {
  BOTH_SIDED, BOTTOM, BOTTOM_INSIDE, TOP, TOP_INSIDE;
  
  static {
    BOTTOM = new cga("BOTTOM", 1);
    BOTH_SIDED = new cga("BOTH_SIDED", 2);
    TOP_INSIDE = new cga("TOP_INSIDE", 3);
    BOTTOM_INSIDE = new cga("BOTTOM_INSIDE", 4);
    $VALUES = new cga[] { TOP, BOTTOM, BOTH_SIDED, TOP_INSIDE, BOTTOM_INSIDE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cga.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */