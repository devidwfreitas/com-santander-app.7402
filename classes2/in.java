public enum in {
  IBJ,
  MBB("MBB");
  
  private String system;
  
  static {
    IBJ = new in("IBJ", 1, "IBJ");
    $VALUES = new in[] { MBB, IBJ };
  }
  
  in(String paramString1) {
    this.system = paramString1;
  }
  
  public String getSystem() {
    return this.system;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\in.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */