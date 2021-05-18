public enum fcs {
  CONTINUOUS, NONE, SINGLE;
  
  static {
    CONTINUOUS = new fcs("CONTINUOUS", 2);
    $VALUES = new fcs[] { NONE, SINGLE, CONTINUOUS };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */