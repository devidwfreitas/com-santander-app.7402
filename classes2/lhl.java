public enum lhl {
  DETAILS, PROCESSING, SAIBA_MAIS;
  
  static {
    DETAILS = new lhl("DETAILS", 1);
    SAIBA_MAIS = new lhl("SAIBA_MAIS", 2);
    $VALUES = new lhl[] { PROCESSING, DETAILS, SAIBA_MAIS };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */