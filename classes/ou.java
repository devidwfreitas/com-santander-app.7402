import java.util.List;

public class ou extends abv implements abx {
  @ekq
  @eks(a = "bankCode")
  private String a;
  
  @ekq
  @eks(a = "branch")
  private String b;
  
  @ekq
  @eks(a = "number")
  private String c;
  
  @ekq
  @eks(a = "balance")
  private String d;
  
  @ekq
  @eks(a = "limitBalance")
  private String e;
  
  @ekq
  @eks(a = "isOwnerIndicator")
  private String f;
  
  @ekq
  @eks(a = "selected")
  private Boolean g = Boolean.valueOf(false);
  
  @ekq
  @eks(a = "saldoTotal")
  private String h;
  
  @ekq
  @eks(a = "investimentoAcumulado")
  private Double i;
  
  @ekq
  @eks(a = "novasAplicacoes")
  private List<ace> j;
  
  public ou() {}
  
  public ou(String paramString1, String paramString2, String paramString3) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }
  
  public List<ace> a() {
    return this.j;
  }
  
  public void a(Boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public void a(Double paramDouble) {
    this.i = paramDouble;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(List<ace> paramList) {
    this.j = paramList;
  }
  
  public Double b() {
    return this.i;
  }
  
  public void b(String paramString) {
    this.d = paramString;
  }
  
  public Boolean c() {
    return this.g;
  }
  
  public void c(String paramString) {
    this.e = paramString;
  }
  
  public String d() {
    return this.c;
  }
  
  public void d(String paramString) {
    this.h = paramString;
  }
  
  public String e() {
    return this.d;
  }
  
  public void e(String paramString) {
    this.f = paramString;
  }
  
  public void f() {
    this.a = o(this.a);
    this.b = o(this.b);
    this.c = o(this.c);
    this.d = o(this.d);
    this.h = o(this.h);
    this.e = o(this.e);
    this.f = o(this.f);
  }
  
  public void f(String paramString) {
    this.a = paramString;
  }
  
  public void g() {
    this.a = n(this.a);
    this.b = n(this.b);
    this.c = n(this.c);
    this.d = n(this.d);
    this.h = n(this.h);
    this.e = n(this.e);
    this.f = n(this.f);
  }
  
  public void g(String paramString) {
    this.b = paramString;
  }
  
  public String h() {
    return this.e;
  }
  
  public String i() {
    return this.e;
  }
  
  public int j() {
    return 0;
  }
  
  public String k() {
    return this.f;
  }
  
  public String l() {
    return this.a;
  }
  
  public String m() {
    return this.b;
  }
  
  public String toString() {
    return "ContaModel{bankCode='" + this.a + '\'' + ", branch='" + this.b + '\'' + ", conta='" + this.c + '\'' + ", saldoDisponivel='" + this.d + '\'' + ", limitBalance='" + this.e + '\'' + ", isOwnerIndicator='" + this.f + '\'' + ", selected=" + this.g + ", saldoTotal='" + this.h + '\'' + ", investimentoAcumulado=" + this.i + ", novasAplicacoes=" + this.j + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */