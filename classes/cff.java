public enum cff {
  BAR, BUBBLE, CANDLE, LINE, SCATTER;
  
  static {
    CANDLE = new cff("CANDLE", 3);
    SCATTER = new cff("SCATTER", 4);
    $VALUES = new cff[] { BAR, BUBBLE, LINE, CANDLE, SCATTER };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */