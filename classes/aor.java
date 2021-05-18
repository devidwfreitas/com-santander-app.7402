public enum aor {
  CONTENT, EMPTY, ERROR, LOADING;
  
  static {
    EMPTY = new aor("EMPTY", 2);
    ERROR = new aor("ERROR", 3);
    $VALUES = new aor[] { CONTENT, LOADING, EMPTY, ERROR };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */