public class kve {
  @eks(a = "notification")
  private String a;
  
  @eks(a = "year")
  private String b;
  
  @eks(a = "branch")
  private String c;
  
  @eks(a = "lossNumber")
  private String d;
  
  @eks(a = "sequence")
  private String e;
  
  @eks(a = "message")
  private String f;
  
  private boolean g = true;
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public boolean a() {
    return this.g;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.b;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return this.c;
  }
  
  public void d(String paramString) {
    if (a()) {
      this.d = nab.a().b(paramString);
      return;
    } 
    this.d = paramString;
  }
  
  public String e() {
    return a() ? nab.a().c(this.d) : this.d;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public String f() {
    return this.e;
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public String g() {
    return this.f;
  }
  
  public String h() {
    return String.format("%s %s %s %s", new Object[] { c(), d(), e(), f() });
  }
  
  public String i() {
    return String.format("%s%s%s%s", new Object[] { c(), d(), e(), f() });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kve.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */