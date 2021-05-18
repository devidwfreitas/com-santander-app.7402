public class kqc {
  @eks(a = "agency")
  private String a;
  
  @eks(a = "account")
  private String b;
  
  public kqc() {}
  
  public kqc(String paramString1, String paramString2) {
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
  
  public String c() {
    return String.format("AG: %s C/C %S", new Object[] { this.a, this.b });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kqc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */