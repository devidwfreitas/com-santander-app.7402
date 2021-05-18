public class inw {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private Boolean e;
  
  public inw(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = Boolean.valueOf(false);
  }
  
  public inw(String paramString1, String paramString2, String paramString3, String paramString4, Boolean paramBoolean) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramBoolean;
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(Boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.d;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public Boolean d() {
    return this.e;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */