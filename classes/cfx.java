public enum cfx {
  LEFT_BOTTOM, LEFT_TOP, RIGHT_BOTTOM, RIGHT_TOP;
  
  static {
    LEFT_BOTTOM = new cfx("LEFT_BOTTOM", 1);
    RIGHT_TOP = new cfx("RIGHT_TOP", 2);
    RIGHT_BOTTOM = new cfx("RIGHT_BOTTOM", 3);
    $VALUES = new cfx[] { LEFT_TOP, LEFT_BOTTOM, RIGHT_TOP, RIGHT_BOTTOM };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */