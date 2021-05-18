import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class lm extends abv implements abx {
  @ekq
  @eks(a = "contractNumber")
  private String a;
  
  @ekq
  @eks(a = "cartItemCode")
  private String b;
  
  @ekq
  @eks(a = "indicatorAllowAdhesionContract")
  private String c;
  
  @ekq
  @eks(a = "riskDegree")
  private String d;
  
  @ekq
  @eks(a = "checkingAccount")
  private lj e;
  
  @ekq
  @eks(a = "messages")
  private List<acb> f = new ArrayList<acb>();
  
  @ekq
  @eks(a = "progressiveIndicator")
  private String g;
  
  @ekq
  @eks(a = "totalValue")
  private String h;
  
  @ekq
  @eks(a = "allowEditIndicator")
  private String i;
  
  @ekq
  @eks(a = "orderNumberConfiguration")
  private String j;
  
  @ekq
  @eks(a = "hiringOrder")
  private String k;
  
  @ekq
  @eks(a = "group")
  private abz l;
  
  @ekq
  @eks(a = "singleApplication")
  private lz m;
  
  @ekq
  @eks(a = "RecurrenceApplication")
  private ly n;
  
  @ekq
  @eks(a = "authenticationBank")
  private String o;
  
  @ekq
  @eks(a = "effectiveHourDate")
  private String p;
  
  @ekq
  @eks(a = "status")
  private String q;
  
  @ekq
  @eks(a = "termValidityDate")
  private String r;
  
  @ekq
  @eks(a = "termType")
  private String s;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<acb> paramList) {
    this.f = paramList;
  }
  
  public void a(lj paramlj) {
    this.e = paramlj;
  }
  
  public void a(ly paramly) {
    this.n = paramly;
  }
  
  public void a(lz paramlz) {
    this.m = paramlz;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.h;
  }
  
  public void c(String paramString) {
    this.h = paramString;
  }
  
  public String d() {
    return this.i;
  }
  
  public void d(String paramString) {
    this.i = paramString;
  }
  
  public String e() {
    return this.j;
  }
  
  public void e(String paramString) {
    this.j = paramString;
  }
  
  public void f() {}
  
  public void f(String paramString) {
    this.k = paramString;
  }
  
  public void g() {
    this.a = n(this.a);
    this.o = n(this.o);
    this.h = n(this.h);
    this.e.g();
    Iterator<acc> iterator = this.l.d().iterator();
    while (iterator.hasNext())
      ((acc)iterator.next()).g(); 
  }
  
  public void g(String paramString) {
    this.g = paramString;
  }
  
  public String h() {
    return this.k;
  }
  
  public void h(String paramString) {
    this.o = paramString;
  }
  
  public List<acb> i() {
    return this.f;
  }
  
  public void i(String paramString) {
    this.p = paramString;
  }
  
  public lj j() {
    return this.e;
  }
  
  public void j(String paramString) {
    this.q = paramString;
  }
  
  public abz k() {
    return this.l;
  }
  
  public String l() {
    return this.g;
  }
  
  public ly m() {
    return this.n;
  }
  
  public lz n() {
    return this.m;
  }
  
  public String o() {
    return this.b;
  }
  
  public String p() {
    return this.o;
  }
  
  public String q() {
    return this.p;
  }
  
  public String r() {
    return this.q;
  }
  
  public String s() {
    return this.s;
  }
  
  public String t() {
    return this.r;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */