public final class etq extends esx {
  private final String a;
  
  private final String b;
  
  private final String c;
  
  private final boolean d;
  
  public etq(String paramString1, String paramString2, String paramString3) {
    this(paramString1, paramString2, paramString3, false);
  }
  
  public etq(String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    super(esy.WIFI);
    this.a = paramString2;
    this.b = paramString1;
    this.c = paramString3;
    this.d = paramBoolean;
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
  
  public boolean d() {
    return this.d;
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(80);
    a(this.a, stringBuilder);
    a(this.b, stringBuilder);
    a(this.c, stringBuilder);
    a(Boolean.toString(this.d), stringBuilder);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */