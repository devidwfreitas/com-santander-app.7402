public enum cgr {
  CLOSEST, DOWN, UP;
  
  static {
    DOWN = new cgr("DOWN", 1);
    CLOSEST = new cgr("CLOSEST", 2);
    $VALUES = new cgr[] { UP, DOWN, CLOSEST };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */