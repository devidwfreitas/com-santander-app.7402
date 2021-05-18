enum eqx {
  BINARY, DIGIT, LOWER, MIXED, PUNCT, UPPER;
  
  static {
    LOWER = new eqx("LOWER", 1);
    MIXED = new eqx("MIXED", 2);
    DIGIT = new eqx("DIGIT", 3);
    PUNCT = new eqx("PUNCT", 4);
    BINARY = new eqx("BINARY", 5);
    $VALUES = new eqx[] { UPPER, LOWER, MIXED, DIGIT, PUNCT, BINARY };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */