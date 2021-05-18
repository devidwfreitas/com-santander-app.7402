public enum mca {
  LEFT("left"),
  RIGHT("right");
  
  private String side;
  
  static {
    $VALUES = new mca[] { LEFT, RIGHT };
  }
  
  mca(String paramString1) {
    this.side = paramString1;
  }
  
  public String getSide() {
    return this.side;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */