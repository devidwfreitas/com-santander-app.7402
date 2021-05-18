public final class eso extends esx {
  private final String[] a;
  
  private final String[] b;
  
  private final String[] c;
  
  private final String d;
  
  private final String e;
  
  eso(String paramString) {
    this(new String[] { paramString }, (String[])null, (String[])null, (String)null, (String)null);
  }
  
  eso(String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String paramString1, String paramString2) {
    super(esy.EMAIL_ADDRESS);
    this.a = paramArrayOfString1;
    this.b = paramArrayOfString2;
    this.c = paramArrayOfString3;
    this.d = paramString1;
    this.e = paramString2;
  }
  
  @Deprecated
  public String a() {
    return (this.a == null || this.a.length == 0) ? null : this.a[0];
  }
  
  public String[] b() {
    return this.a;
  }
  
  public String[] c() {
    return this.b;
  }
  
  public String[] d() {
    return this.c;
  }
  
  public String e() {
    return this.d;
  }
  
  public String f() {
    return this.e;
  }
  
  @Deprecated
  public String g() {
    return "mailto:";
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(30);
    a(this.a, stringBuilder);
    a(this.b, stringBuilder);
    a(this.c, stringBuilder);
    a(this.d, stringBuilder);
    a(this.e, stringBuilder);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\eso.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */