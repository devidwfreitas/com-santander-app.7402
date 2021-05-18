public final class etg extends esx {
  private final String a;
  
  private final String b;
  
  private final String c;
  
  public etg(String paramString1, String paramString2, String paramString3) {
    super(esy.TEL);
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(20);
    a(this.a, stringBuilder);
    a(this.c, stringBuilder);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */