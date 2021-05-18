public enum bpv {
  PUBLISH, READ;
  
  static {
    PUBLISH = new bpv("PUBLISH", 1);
    $VALUES = new bpv[] { READ, PUBLISH };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */