public enum bln {
  NO_CONNECTIVITY, SERVER_ERROR, SUCCESS, UNKNOWN_ERROR;
  
  static {
    SERVER_ERROR = new bln("SERVER_ERROR", 1);
    NO_CONNECTIVITY = new bln("NO_CONNECTIVITY", 2);
    UNKNOWN_ERROR = new bln("UNKNOWN_ERROR", 3);
    $VALUES = new bln[] { SUCCESS, SERVER_ERROR, NO_CONNECTIVITY, UNKNOWN_ERROR };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bln.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */