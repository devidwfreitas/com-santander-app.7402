public enum iev {
  DISABLE, ENABLE, FAILURE, MENU, OFFER, SUCCESS;
  
  static {
    MENU = new iev("MENU", 1);
    ENABLE = new iev("ENABLE", 2);
    DISABLE = new iev("DISABLE", 3);
    SUCCESS = new iev("SUCCESS", 4);
    FAILURE = new iev("FAILURE", 5);
    $VALUES = new iev[] { OFFER, MENU, ENABLE, DISABLE, SUCCESS, FAILURE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */