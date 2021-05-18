public enum btw {
  COMPOSE_FLOW, REPLY_FLOW, UNKNOWN;
  
  static {
    COMPOSE_FLOW = new btw("COMPOSE_FLOW", 1);
    UNKNOWN = new btw("UNKNOWN", 2);
    $VALUES = new btw[] { REPLY_FLOW, COMPOSE_FLOW, UNKNOWN };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */