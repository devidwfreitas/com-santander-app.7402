import java.util.Date;

public class kvp {
  @eks(a = "year")
  private String a;
  
  @eks(a = "branch")
  private String b;
  
  @eks(a = "lossNumber")
  private String c;
  
  @eks(a = "sequence")
  private String d;
  
  @eks(a = "openDate")
  private Date e;
  
  @eks(a = "occurrenceDate")
  private Date f;
  
  @eks(a = "product")
  private String g;
  
  @eks(a = "productDescription")
  private String h;
  
  @eks(a = "cause")
  private String i;
  
  @eks(a = "causeDescription")
  private String j;
  
  @eks(a = "cover")
  private String k;
  
  @eks(a = "coverDescription")
  private String l;
  
  @eks(a = "assetInsuraceNumber")
  private String m;
  
  @eks(a = "assetInsuraceCodeDescription")
  private String n;
  
  @eks(a = "lastStatusCode")
  private String o;
  
  @eks(a = "lastStatusDescription")
  private String p;
  
  @eks(a = "branchOffice")
  private String q;
  
  @eks(a = "policy")
  private String r;
  
  @eks(a = "certificate")
  private String s;
  
  @eks(a = "endorsement")
  private String t;
  
  public String a() {
    return mhj.x(this.a);
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(Date paramDate) {
    this.e = paramDate;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public void b(Date paramDate) {
    this.f = paramDate;
  }
  
  public String c() {
    return nab.a().c(this.c);
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return mhj.x(this.d);
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public Date e() {
    return this.e;
  }
  
  public void e(String paramString) {
    this.g = paramString;
  }
  
  public Date f() {
    return this.f;
  }
  
  public void f(String paramString) {
    this.h = paramString;
  }
  
  public String g() {
    return this.g;
  }
  
  public void g(String paramString) {
    this.i = paramString;
  }
  
  public String h() {
    return this.h;
  }
  
  public void h(String paramString) {
    this.j = paramString;
  }
  
  public String i() {
    return this.i;
  }
  
  public void i(String paramString) {
    this.k = paramString;
  }
  
  public String j() {
    return this.j;
  }
  
  public void j(String paramString) {
    this.l = paramString;
  }
  
  public String k() {
    return this.k;
  }
  
  public void k(String paramString) {
    this.m = paramString;
  }
  
  public String l() {
    return this.l;
  }
  
  public void l(String paramString) {
    this.n = paramString;
  }
  
  public String m() {
    return this.m;
  }
  
  public void m(String paramString) {
    this.o = paramString;
  }
  
  public String n() {
    return this.n;
  }
  
  public void n(String paramString) {
    this.p = paramString;
  }
  
  public String o() {
    return this.o;
  }
  
  public void o(String paramString) {
    this.q = paramString;
  }
  
  public String p() {
    return this.p;
  }
  
  public void p(String paramString) {
    this.r = paramString;
  }
  
  public String q() {
    return this.q;
  }
  
  public void q(String paramString) {
    this.s = paramString;
  }
  
  public String r() {
    return nab.a().c(this.r);
  }
  
  public void r(String paramString) {
    this.t = paramString;
  }
  
  public String s() {
    return this.s;
  }
  
  public String t() {
    return this.t;
  }
  
  public String u() {
    return mhj.y(String.format("%s %s %s %s", new Object[] { a(), b(), c(), d() }));
  }
  
  public String v() {
    return mhj.y(String.format("%s%s%s%s", new Object[] { a(), b(), c(), d() }));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kvp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */