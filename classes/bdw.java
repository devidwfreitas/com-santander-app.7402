public enum bdw {
  Individually, Simultaneously;
  
  static {
    Individually = new bdw("Individually", 1);
    $VALUES = new bdw[] { Simultaneously, Individually };
  }
  
  static bdw forId(int paramInt) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("Unknown trim path type " + paramInt);
      case 1:
        return Simultaneously;
      case 2:
        break;
    } 
    return Individually;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */