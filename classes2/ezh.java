public enum ezh {
  AUTO, BYTE, NUMERIC, TEXT;
  
  static {
    BYTE = new ezh("BYTE", 2);
    NUMERIC = new ezh("NUMERIC", 3);
    $VALUES = new ezh[] { AUTO, TEXT, BYTE, NUMERIC };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */