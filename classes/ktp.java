import android.text.TextUtils;
import java.util.Date;

public class ktp extends ktu {
  @eks(a = "debitBranch")
  private String a;
  
  @eks(a = "riskSiteCep")
  private String b;
  
  @eks(a = "insuredKey")
  private String c;
  
  @eks(a = "riskSiteCity")
  private String d;
  
  @eks(a = "insurerCnpj")
  private String e;
  
  @eks(a = "debitAccount")
  private String f;
  
  @eks(a = "productDescription")
  private String g;
  
  @eks(a = "riskSiteAddress")
  private String h;
  
  @eks(a = "riskSiteState")
  private String i;
  
  @eks(a = "family")
  private String j;
  
  @eks(a = "paymentMethod")
  private String k;
  
  @eks(a = "beneficiaryIndicator")
  private String l;
  
  @eks(a = "riskSiteIndicator")
  private String m;
  
  @eks(a = "startDate")
  private Date n;
  
  @eks(a = "productName")
  private String o;
  
  @eks(a = "policyNumber")
  private String p;
  
  @eks(a = "certificateNumber")
  private String q;
  
  @eks(a = "susepProcess")
  private String r;
  
  @eks(a = "insurerName")
  private String s;
  
  @eks(a = "endDate")
  private Date t;
  
  @eks(a = "riskSiteType")
  private String u;
  
  @eks(a = "insured")
  private ktv v;
  
  @eks(a = "cardNumber")
  private String w;
  
  public String a() {
    return this.w;
  }
  
  public void a(String paramString) {
    this.w = paramString;
  }
  
  public void a(Date paramDate) {
    this.n = paramDate;
  }
  
  public void a(ktv paramktv) {
    this.v = paramktv;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.a = paramString;
  }
  
  public void b(Date paramDate) {
    this.t = paramDate;
  }
  
  public String c() {
    return this.b;
  }
  
  public void c(String paramString) {
    this.b = paramString;
  }
  
  public String d() {
    return this.c;
  }
  
  public void d(String paramString) {
    this.c = paramString;
  }
  
  public String e() {
    return this.d;
  }
  
  public void e(String paramString) {
    this.d = paramString;
  }
  
  public String f() {
    return this.e;
  }
  
  public void f(String paramString) {
    this.e = paramString;
  }
  
  public String g() {
    return this.f;
  }
  
  public void g(String paramString) {
    this.f = paramString;
  }
  
  public String h() {
    return this.g;
  }
  
  public void h(String paramString) {
    this.g = paramString;
  }
  
  public String i() {
    return this.h;
  }
  
  public void i(String paramString) {
    this.h = paramString;
  }
  
  public String j() {
    return this.i;
  }
  
  public void j(String paramString) {
    this.i = paramString;
  }
  
  public String k() {
    return this.j;
  }
  
  public void k(String paramString) {
    this.j = paramString;
  }
  
  public String l() {
    return !TextUtils.isEmpty(this.k) ? this.k.trim() : "";
  }
  
  public void l(String paramString) {
    this.k = paramString;
  }
  
  public String m() {
    return (this.l != null) ? this.l : "";
  }
  
  public void m(String paramString) {
    this.l = paramString;
  }
  
  public String n() {
    return !TextUtils.isEmpty(this.m) ? this.m.trim() : "";
  }
  
  public void n(String paramString) {
    this.m = paramString;
  }
  
  public Date o() {
    return this.n;
  }
  
  public void o(String paramString) {
    this.o = paramString;
  }
  
  public String p() {
    return this.o;
  }
  
  public void p(String paramString) {
    this.p = paramString;
  }
  
  public String q() {
    return this.p;
  }
  
  public void q(String paramString) {
    this.q = paramString;
  }
  
  public String r() {
    return this.q;
  }
  
  public void r(String paramString) {
    this.r = paramString;
  }
  
  public String s() {
    return this.r;
  }
  
  public void s(String paramString) {
    this.s = paramString;
  }
  
  public String t() {
    return this.s;
  }
  
  public void t(String paramString) {
    this.u = paramString;
  }
  
  public Date u() {
    return this.t;
  }
  
  public String v() {
    return this.u;
  }
  
  public ktv w() {
    return this.v;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ktp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */