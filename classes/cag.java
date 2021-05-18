public enum cag {
  FACEBOOK("facebook"),
  MESSENGER("messenger");
  
  private final String name;
  
  static {
    $VALUES = new cag[] { FACEBOOK, MESSENGER };
  }
  
  cag(String paramString1) {
    this.name = paramString1;
  }
  
  public boolean equalsName(String paramString) {
    return (paramString == null) ? false : this.name.equals(paramString);
  }
  
  public String toString() {
    return this.name;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */