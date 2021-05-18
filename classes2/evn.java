public enum evn {
  FORCE_NONE, FORCE_RECTANGLE, FORCE_SQUARE;
  
  static {
    FORCE_RECTANGLE = new evn("FORCE_RECTANGLE", 2);
    $VALUES = new evn[] { FORCE_NONE, FORCE_SQUARE, FORCE_RECTANGLE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */