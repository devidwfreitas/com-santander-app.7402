enum eyu {
  ALPHA, ALPHA_SHIFT, LOWER, MIXED, PUNCT, PUNCT_SHIFT;
  
  static {
    ALPHA_SHIFT = new eyu("ALPHA_SHIFT", 4);
    PUNCT_SHIFT = new eyu("PUNCT_SHIFT", 5);
    $VALUES = new eyu[] { ALPHA, LOWER, MIXED, PUNCT, ALPHA_SHIFT, PUNCT_SHIFT };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */