import java.util.List;

public class ln extends abv implements abx {
  @ekq
  @eks(a = "contractNumber")
  private String a;
  
  @ekq
  @eks(a = "familyCode")
  private String b;
  
  @ekq
  @eks(a = "systemCode")
  private String c;
  
  @ekq
  @eks(a = "productCode")
  private String d;
  
  @ekq
  @eks(a = "subProductCode")
  private String e;
  
  @ekq
  @eks(a = "subProductName")
  private String f;
  
  @ekq
  @eks(a = "checkingAccount")
  private lj g;
  
  @ekq
  @eks(a = "singleApplication")
  private lz h;
  
  @ekq
  @eks(a = "recurrenceApplication")
  private ly i;
  
  @ekq
  @eks(a = "messages")
  private List<acb> j;
  
  @ekq
  @eks(a = "status")
  private String k;
  
  @ekq
  @eks(a = "progressiveIndicator")
  private String l;
  
  @ekq
  @eks(a = "administrationFee")
  private String m;
  
  @ekq
  @eks(a = "profitability")
  private String n;
  
  public ln() {}
  
  public ln(ace paramace) {
    String str1;
    if (paramace.e() != null) {
      str1 = paramace.e().a();
    } else {
      str1 = null;
    } 
    this.a = str1;
    this.b = paramace.q();
    this.c = paramace.f().u();
    this.d = paramace.f().i();
    this.e = paramace.f().j();
    this.f = paramace.f().k();
    if (paramace.r() != null) {
      str1 = paramace.r().l();
    } else {
      str1 = null;
    } 
    this.l = str1;
    this.g = new lj();
    this.g.a(paramace.h().l());
    this.g.c(paramace.h().d());
    this.g.b(paramace.h().m());
    if (paramace.j() != null && paramace.j().doubleValue() > 0.0D) {
      this.h = new lz();
      this.h.a(paramace.j().toString());
      lz lz1 = this.h;
      if (paramace.k() != null) {
        str1 = aat.a(paramace.k());
      } else {
        str1 = null;
      } 
      lz1.b(str1);
      lz1 = this.h;
      if (paramace.l() != null) {
        str1 = paramace.l().toString();
      } else {
        str1 = null;
      } 
      lz1.c(str1);
      lz1 = this.h;
      if (paramace.w() != null) {
        str1 = paramace.w();
      } else {
        str1 = null;
      } 
      lz1.d(str1);
      lz1 = this.h;
      if (paramace.B() != null) {
        str1 = paramace.B();
      } else {
        str1 = null;
      } 
      lz1.f(str1);
      lz1 = this.h;
      if (paramace.C() != null) {
        str1 = paramace.C();
      } else {
        str1 = null;
      } 
      lz1.g(str1);
      this.h.h(paramace.E());
      if (!paramace.A()) {
        lz1 = this.h;
        if (paramace.y()) {
          str1 = "T";
        } else {
          str1 = "P";
        } 
        lz1.d(str1);
      } 
    } 
    if (paramace.m() != null && paramace.m().doubleValue() > 0.0D) {
      this.i = new ly();
      this.i.a(paramace.m().toString());
      ly ly1 = this.i;
      if (paramace.n() != null) {
        str1 = aat.a(paramace.n());
      } else {
        str1 = null;
      } 
      ly1.b(str1);
      ly1 = this.i;
      if (paramace.o() != null) {
        str1 = String.valueOf(paramace.o());
      } else {
        str1 = null;
      } 
      ly1.c(str1);
      ly1 = this.i;
      if (paramace.w() != null) {
        str1 = paramace.w();
      } else {
        str1 = null;
      } 
      ly1.d(str1);
      ly1 = this.i;
      if (paramace.B() != null) {
        str1 = paramace.B();
      } else {
        str1 = null;
      } 
      ly1.g(str1);
      ly1 = this.i;
      str1 = str2;
      if (paramace.C() != null)
        str1 = paramace.C(); 
      ly1.f(str1);
      this.i.e("M");
    } 
    this.k = "ED";
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(lj paramlj) {
    this.g = paramlj;
  }
  
  public void a(ly paramly) {
    this.i = paramly;
  }
  
  public void a(lz paramlz) {
    this.h = paramlz;
  }
  
  public String b() {
    return this.e;
  }
  
  public void b(String paramString) {
    this.e = paramString;
  }
  
  public lz c() {
    return this.h;
  }
  
  public void c(String paramString) {
    this.l = paramString;
  }
  
  public ly d() {
    return this.i;
  }
  
  public lj e() {
    return this.g;
  }
  
  public void f() {
    this.a = o(this.a);
    if (this.h != null)
      this.h.f(); 
    if (this.i != null)
      this.i.f(); 
    if (this.g != null)
      this.g.f(); 
  }
  
  public void g() {}
  
  public String h() {
    return this.l;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ln.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */