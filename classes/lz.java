import android.util.Log;

public class lz extends abv implements abx {
  @ekq
  @eks(a = "value")
  private String a;
  
  @ekq
  @eks(a = "date")
  private String b;
  
  @ekq
  @eks(a = "maxDueDays")
  private String c;
  
  @ekq
  @eks(a = "grace")
  private String d;
  
  @ekq
  @eks(a = "administrationFee")
  private String e;
  
  @ekq
  @eks(a = "profitability")
  private String f;
  
  @ekq
  @eks(a = "recurrenceType")
  private String g;
  
  @ekq
  @eks(a = "schedulingIndicator")
  private String h;
  
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
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return this.g;
  }
  
  public void e(String paramString) {
    this.g = paramString;
  }
  
  public void f() {
    try {
      this.c = o(this.c);
      this.a = i(Double.valueOf(this.a));
      return;
    } catch (Exception exception) {
      Log.d("Enc", exception.toString());
      return;
    } 
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public void g() {}
  
  public void g(String paramString) {
    this.e = paramString;
  }
  
  public String h() {
    return this.f;
  }
  
  public void h(String paramString) {
    this.h = paramString;
  }
  
  public String i() {
    return this.e;
  }
  
  public String j() {
    return this.h;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */