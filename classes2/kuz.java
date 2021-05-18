public enum kuz {
  BACK,
  NEXT("NEXT");
  
  static {
    BACK = new kuz("BACK", 1, "BACK");
    $VALUES = new kuz[] { NEXT, BACK };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kuz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */