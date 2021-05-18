public enum aqb {
  Agent,
  External,
  User("CLIENT");
  
  private final String value;
  
  static {
    Agent = new aqb("Agent", 1, "AGENT");
    External = new aqb("External", 2, "EXTERNAL");
    $VALUES = new aqb[] { User, Agent, External };
  }
  
  aqb(String paramString1) {
    this.value = paramString1;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */