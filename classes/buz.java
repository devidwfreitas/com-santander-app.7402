public enum buz {
  DISABLED, NOT_SUPPORTED, PERMISSION_DENIED, SCAN_ALREADY_IN_PROGRESS, TIMEOUT, UNKNOWN_ERROR;
  
  static {
    DISABLED = new buz("DISABLED", 2);
    SCAN_ALREADY_IN_PROGRESS = new buz("SCAN_ALREADY_IN_PROGRESS", 3);
    UNKNOWN_ERROR = new buz("UNKNOWN_ERROR", 4);
    TIMEOUT = new buz("TIMEOUT", 5);
    $VALUES = new buz[] { NOT_SUPPORTED, PERMISSION_DENIED, DISABLED, SCAN_ALREADY_IN_PROGRESS, UNKNOWN_ERROR, TIMEOUT };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\buz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */