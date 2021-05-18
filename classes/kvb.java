import android.text.TextUtils;
import java.util.Date;
import java.util.List;

public class kvb {
  @eks(a = "title")
  private String a;
  
  @eks(a = "listData")
  private List<kuy> b;
  
  @eks(a = "minimumValue")
  private Double c;
  
  @eks(a = "maximumValue")
  private Double d;
  
  @eks(a = "minDate")
  private Date e;
  
  @eks(a = "maxDate")
  private Date f;
  
  @eks(a = "address")
  private String g;
  
  @eks(a = "email")
  private String h;
  
  @eks(a = "phone")
  private String i;
  
  @eks(a = "insuranceNumber")
  private String j;
  
  @eks(a = "dataType")
  private kuq k;
  
  @eks(a = "totalSteps")
  private Integer l;
  
  @eks(a = "currentStep")
  private Integer m;
  
  @eks(a = "remainingSteps")
  private Integer n;
  
  @eks(a = "values")
  private kvv o;
  
  @eks(a = "sendProtocol")
  private String p;
  
  @eks(a = "assistancePhone")
  private String q;
  
  public String a() {
    return this.q;
  }
  
  public void a(Double paramDouble) {
    this.c = paramDouble;
  }
  
  public void a(Integer paramInteger) {
    this.n = paramInteger;
  }
  
  public void a(String paramString) {
    this.q = paramString;
  }
  
  public void a(Date paramDate) {
    this.e = paramDate;
  }
  
  public void a(List<kuy> paramList) {
    this.b = paramList;
  }
  
  public void a(kuq paramkuq) {
    this.k = paramkuq;
  }
  
  public void a(kvv paramkvv) {
    this.o = paramkvv;
  }
  
  public String b() {
    return this.p;
  }
  
  public void b(Double paramDouble) {
    this.d = paramDouble;
  }
  
  public void b(Integer paramInteger) {
    this.l = paramInteger;
  }
  
  public void b(String paramString) {
    this.p = paramString;
  }
  
  public void b(Date paramDate) {
    this.f = paramDate;
  }
  
  public Integer c() {
    return this.n;
  }
  
  public void c(Integer paramInteger) {
    this.m = paramInteger;
  }
  
  public void c(String paramString) {
    this.a = paramString;
  }
  
  public kvv d() {
    return this.o;
  }
  
  public void d(String paramString) {
    this.g = paramString;
  }
  
  public String e() {
    return !TextUtils.isEmpty(this.a) ? this.a.trim() : "";
  }
  
  public void e(String paramString) {
    this.h = paramString;
  }
  
  public List<kuy> f() {
    return this.b;
  }
  
  public void f(String paramString) {
    this.i = paramString;
  }
  
  public Double g() {
    if (this.c != null) {
      double d1 = this.c.doubleValue();
      return Double.valueOf(d1);
    } 
    double d = 0.0D;
    return Double.valueOf(d);
  }
  
  public void g(String paramString) {
    this.j = paramString;
  }
  
  public Double h() {
    if (this.c != null) {
      double d1 = this.d.doubleValue();
      return Double.valueOf(d1);
    } 
    double d = 0.0D;
    return Double.valueOf(d);
  }
  
  public Date i() {
    return this.e;
  }
  
  public Date j() {
    return this.f;
  }
  
  public String k() {
    return this.g;
  }
  
  public String l() {
    return this.h;
  }
  
  public String m() {
    return this.i;
  }
  
  public String n() {
    return this.j;
  }
  
  public kuq o() {
    return this.k;
  }
  
  public Integer p() {
    return this.l;
  }
  
  public Integer q() {
    return this.m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kvb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */