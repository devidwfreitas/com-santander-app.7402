public enum mgx {
  GRAY_BACKGROUND_DETAILS,
  GRAY_REP,
  GREY(2130838904);
  
  private int drawableRes;
  
  static {
    GRAY_BACKGROUND_DETAILS = new mgx("GRAY_BACKGROUND_DETAILS", 1, 2130838902);
    GRAY_REP = new mgx("GRAY_REP", 2, 2130838903);
    $VALUES = new mgx[] { GREY, GRAY_BACKGROUND_DETAILS, GRAY_REP };
  }
  
  mgx(int paramInt1) {
    this.drawableRes = paramInt1;
  }
  
  public int getDrawableRes() {
    return this.drawableRes;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */