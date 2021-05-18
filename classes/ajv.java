import java.io.Serializable;
import java.util.List;

public class ajv implements Serializable {
  @ekq
  @eks(a = "code")
  private String a;
  
  @ekq
  @eks(a = "bankCode")
  private String b;
  
  @ekq
  @eks(a = "indRemaneja")
  private String c;
  
  @ekq
  @eks(a = "limitShadow")
  private String d;
  
  @ekq
  @eks(a = "limitMaximoCartao")
  private String e;
  
  @ekq
  @eks(a = "limitMaximoCheque")
  private String f;
  
  @ekq
  @eks(a = "sumTotalLimit")
  private String g;
  
  @ekq
  @eks(a = "sumConsumLimit")
  private String h;
  
  @ekq
  @eks(a = "adctionalSum")
  private String i;
  
  @ekq
  @eks(a = "ListContracts")
  private List<ajw> j;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<ajw> paramList) {
    this.j = paramList;
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
  
  public List<ajw> j() {
    return this.j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */