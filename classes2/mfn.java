public enum mfn {
  CHECK_GREEN,
  COMPLETED_GREEN(2130838392),
  DEFAULT_GRAY(2130838392),
  WAVE_GREEN_ONE(2130838687),
  WAVE_GREEN_THREE(2130838687),
  WAVE_GREEN_TWO(2130838688);
  
  private int colorRes;
  
  static {
    WAVE_GREEN_THREE = new mfn("WAVE_GREEN_THREE", 3, 2130838689);
    DEFAULT_GRAY = new mfn("DEFAULT_GRAY", 4, 2130838387);
    CHECK_GREEN = new mfn("CHECK_GREEN", 5, 2130838382);
    $VALUES = new mfn[] { COMPLETED_GREEN, WAVE_GREEN_ONE, WAVE_GREEN_TWO, WAVE_GREEN_THREE, DEFAULT_GRAY, CHECK_GREEN };
  }
  
  mfn(int paramInt1) {
    this.colorRes = paramInt1;
  }
  
  public int getRes() {
    return this.colorRes;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */