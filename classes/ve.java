import android.support.annotation.NonNull;

public class ve implements Comparable<ve> {
  @ekq
  @eks(a = "systemCode")
  private String a;
  
  @ekq
  @eks(a = "code")
  private String b;
  
  @ekq
  @eks(a = "productCode")
  private String c;
  
  @ekq
  @eks(a = "description")
  private String d;
  
  @ekq
  @eks(a = "riskDegree")
  private String e;
  
  @ekq
  @eks(a = "minimumValueInitialApplication")
  private String f;
  
  @ekq
  @eks(a = "profitabilityValueDescription")
  private String g;
  
  @ekq
  @eks(a = "profitabilityValue")
  private String h;
  
  @ekq
  @eks(a = "minimumValueInitialDescription")
  private String i;
  
  @ekq
  @eks(a = "riskDegreeText")
  private String j;
  
  @ekq
  @eks(a = "highlighted")
  private Boolean k;
  
  public ve() {}
  
  public ve(String paramString) {
    this.d = paramString;
  }
  
  public int a(@NonNull ve paramve) {
    String str;
    if (this.f.equals("")) {
      str = "0";
    } else {
      str = this.f;
    } 
    Double double_2 = Double.valueOf(Double.parseDouble(str));
    if (paramve.f.equals("")) {
      str = "0";
    } else {
      str = paramve.f;
    } 
    Double double_1 = Double.valueOf(Double.parseDouble(str));
    return (this == paramve) ? 0 : ((double_2.doubleValue() < double_1.doubleValue()) ? -1 : ((double_2.doubleValue() > double_1.doubleValue()) ? 1 : 0));
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(Boolean paramBoolean) {
    this.k = paramBoolean;
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
    return this.e;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public String f() {
    return this.f;
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public String g() {
    return this.g;
  }
  
  public void g(String paramString) {
    this.g = paramString;
  }
  
  public String h() {
    return this.h;
  }
  
  public void h(String paramString) {
    this.h = paramString;
  }
  
  public String i() {
    return this.i;
  }
  
  public void i(String paramString) {
    this.i = paramString;
  }
  
  public String j() {
    return this.j;
  }
  
  public void j(String paramString) {
    this.j = paramString;
  }
  
  public Boolean k() {
    return this.k;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ve.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */