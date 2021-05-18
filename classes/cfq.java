public enum cfq {
  CIRCLE, DEFAULT, EMPTY, LINE, NONE, SQUARE;
  
  static {
    EMPTY = new cfq("EMPTY", 1);
    DEFAULT = new cfq("DEFAULT", 2);
    SQUARE = new cfq("SQUARE", 3);
    CIRCLE = new cfq("CIRCLE", 4);
    LINE = new cfq("LINE", 5);
    $VALUES = new cfq[] { NONE, EMPTY, DEFAULT, SQUARE, CIRCLE, LINE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */