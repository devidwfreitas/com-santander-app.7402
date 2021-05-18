public enum kvx {
  ADVISED("0", true),
  ANALYSIS("0", true),
  COMPLETED("0", true),
  DOCUMENTATION("0", true),
  SURVEY("1", true);
  
  private boolean statusCheck;
  
  private String step;
  
  static {
    DOCUMENTATION = new kvx("DOCUMENTATION", 2, "2", true);
    ANALYSIS = new kvx("ANALYSIS", 3, "3", true);
    COMPLETED = new kvx("COMPLETED", 4, "4", true);
    $VALUES = new kvx[] { ADVISED, SURVEY, DOCUMENTATION, ANALYSIS, COMPLETED };
  }
  
  kvx(String paramString1, boolean paramBoolean) {
    this.step = paramString1;
    this.statusCheck = paramBoolean;
  }
  
  public static kvx fromString(String paramString) {
    if (paramString != null)
      for (kvx kvx1 : values()) {
        if (paramString.equalsIgnoreCase(kvx1.getStep()))
          return kvx1; 
      }  
    return null;
  }
  
  public String getStep() {
    return this.step;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kvx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */