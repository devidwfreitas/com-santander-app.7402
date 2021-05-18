public enum knw {
  AUDIO, JPG, PDF, PNG;
  
  static {
    JPG = new knw("JPG", 1);
    PDF = new knw("PDF", 2);
    AUDIO = new knw("AUDIO", 3);
    $VALUES = new knw[] { PNG, JPG, PDF, AUDIO };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\knw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */