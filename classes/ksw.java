public class ksw {
  @eks(a = "number")
  private String a;
  
  @eks(a = "code")
  private String b;
  
  public ksw(String paramString1, String paramString2) {
    this.a = paramString1;
    this.b = paramString2;
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ksw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */