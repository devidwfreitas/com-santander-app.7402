import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class to extends abv implements abx {
  @ekq
  @eks(a = "productCode")
  private String a;
  
  @ekq
  @eks(a = "code")
  private String b;
  
  @ekq
  @eks(a = "description")
  private String c;
  
  @ekq
  @eks(a = "contractTypeCode")
  private String d;
  
  @ekq
  @eks(a = "allowAdditionalCashIndicator")
  private boolean e;
  
  @ekq
  @eks(a = "allowInvestmentApplicationIndicator")
  private boolean f;
  
  @ekq
  @eks(a = "allowInvestmentApplicationMessage")
  private String g;
  
  @ekq
  @eks(a = "allowInvestmentRecoveryIndicator")
  private boolean h;
  
  @ekq
  @eks(a = "allowInvestmentRecoveryMessage")
  private String i;
  
  @ekq
  @eks(a = "investimentNotAllowedMessage")
  private String j;
  
  @ekq
  @eks(a = "balance")
  private sw k;
  
  @ekq
  @eks(a = "investments")
  private List<tk> l = new ArrayList<tk>();
  
  @ekq
  @eks(a = "systemInitial")
  private String m;
  
  public to() {}
  
  public to(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.m = paramString1;
    this.a = paramString2;
    this.b = paramString3;
    this.c = paramString4;
  }
  
  public void a(sw paramsw) {
    this.k = paramsw;
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void b(List<tk> paramList) {
    this.l = paramList;
  }
  
  public void b(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public void c(boolean paramBoolean) {
    this.h = paramBoolean;
  }
  
  public void f() {}
  
  public void f(String paramString) {
    this.a = paramString;
  }
  
  public void g() {
    if (this.k != null)
      this.k.g(); 
    Iterator<tk> iterator = this.l.iterator();
    while (iterator.hasNext())
      ((tk)iterator.next()).g(); 
  }
  
  public void g(String paramString) {
    this.b = paramString;
  }
  
  public void h(String paramString) {
    this.c = paramString;
  }
  
  public String i() {
    return this.a;
  }
  
  public void i(String paramString) {
    this.d = paramString;
  }
  
  public String j() {
    return this.b;
  }
  
  public void j(String paramString) {
    this.g = paramString;
  }
  
  public String k() {
    return this.c;
  }
  
  public void k(String paramString) {
    this.i = paramString;
  }
  
  public String l() {
    return this.d;
  }
  
  public void l(String paramString) {
    this.j = paramString;
  }
  
  public void m(String paramString) {
    this.m = paramString;
  }
  
  public boolean m() {
    return this.e;
  }
  
  public boolean n() {
    return this.f;
  }
  
  public String o() {
    return this.g;
  }
  
  public boolean p() {
    return this.h;
  }
  
  public String q() {
    return this.i;
  }
  
  public String r() {
    return this.j;
  }
  
  public sw s() {
    return this.k;
  }
  
  public List<tk> t() {
    return this.l;
  }
  
  public String u() {
    return this.m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\to.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */