public enum cfi {
  CHEVRON_DOWN,
  CHEVRON_UP,
  CIRCLE,
  CROSS,
  SQUARE("SQUARE"),
  TRIANGLE("SQUARE"),
  X("SQUARE");
  
  private final String shapeIdentifier;
  
  static {
    CIRCLE = new cfi("CIRCLE", 1, "CIRCLE");
    TRIANGLE = new cfi("TRIANGLE", 2, "TRIANGLE");
    CROSS = new cfi("CROSS", 3, "CROSS");
    X = new cfi("X", 4, "X");
    CHEVRON_UP = new cfi("CHEVRON_UP", 5, "CHEVRON_UP");
    CHEVRON_DOWN = new cfi("CHEVRON_DOWN", 6, "CHEVRON_DOWN");
    $VALUES = new cfi[] { SQUARE, CIRCLE, TRIANGLE, CROSS, X, CHEVRON_UP, CHEVRON_DOWN };
  }
  
  cfi(String paramString1) {
    this.shapeIdentifier = paramString1;
  }
  
  public static cfi[] getAllDefaultShapes() {
    return new cfi[] { SQUARE, CIRCLE, TRIANGLE, CROSS, X, CHEVRON_UP, CHEVRON_DOWN };
  }
  
  public String toString() {
    return this.shapeIdentifier;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */