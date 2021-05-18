import android.text.TextUtils;

public class kpw {
  @eks(a = "kinship")
  private String a;
  
  @eks(a = "name")
  private String b;
  
  @eks(a = "coverageShare")
  private String c;
  
  @eks(a = "coverageValue")
  private String d;
  
  public String a() {
    return this.d;
  }
  
  public void a(String paramString) {
    this.d = paramString;
  }
  
  public void a(kpw paramkpw) {
    c(paramkpw.c());
    d(paramkpw.d());
    b(paramkpw.b());
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return TextUtils.isEmpty(this.a) ? "" : this.a.trim();
  }
  
  public void c(String paramString) {
    this.a = paramString;
  }
  
  public String d() {
    return TextUtils.isEmpty(this.c) ? "0" : this.c.trim();
  }
  
  public void d(String paramString) {
    this.c = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kpw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */