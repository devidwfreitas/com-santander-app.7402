public class ksh {
  @eks(a = "category")
  private String a;
  
  @eks(a = "code")
  private String b;
  
  @eks(a = "type")
  private String c;
  
  public ksh(String paramString1, String paramString2, String paramString3) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ksh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */