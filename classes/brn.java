public enum brn {
  EVERYONE,
  FRIENDS,
  NONE(null),
  ONLY_ME("only_me");
  
  private final String nativeProtocolAudience;
  
  static {
    FRIENDS = new brn("FRIENDS", 2, "friends");
    EVERYONE = new brn("EVERYONE", 3, "everyone");
    $VALUES = new brn[] { NONE, ONLY_ME, FRIENDS, EVERYONE };
  }
  
  brn(String paramString1) {
    this.nativeProtocolAudience = paramString1;
  }
  
  public String getNativeProtocolAudience() {
    return this.nativeProtocolAudience;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */