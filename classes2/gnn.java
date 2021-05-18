public enum gnn {
  FINISHED, PENDING, RUNNING;
  
  static {
    FINISHED = new gnn("FINISHED", 2);
    $VALUES = new gnn[] { PENDING, RUNNING, FINISHED };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */