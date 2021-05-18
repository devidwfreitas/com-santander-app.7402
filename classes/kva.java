import java.util.Date;
import java.util.List;

public class kva {
  @eks(a = "insuranceStep")
  private kuq a;
  
  @eks(a = "currentStep")
  private Integer b;
  
  @eks(a = "singleSelectedId")
  private Long c;
  
  @eks(a = "selectedDate")
  private Date d;
  
  @eks(a = "selectedValue")
  private Double e;
  
  @eks(a = "audio")
  private String f;
  
  @eks(a = "action")
  private kuz g;
  
  @eks(a = "surverySelectedPeriod")
  private kvf h;
  
  @eks(a = "selectedAddress")
  private String i;
  
  @eks(a = "email")
  private String j;
  
  @eks(a = "phone")
  private String k;
  
  @eks(a = "finished")
  private Boolean l;
  
  @eks(a = "insuranceFamilyId")
  private Long m;
  
  @eks(a = "coverageId")
  private Long n;
  
  @eks(a = "filledValue")
  private String o;
  
  @eks(a = "equipmentDataList")
  private List<kux> p;
  
  @eks(a = "surveySelectedDate")
  private Date q;
  
  @eks(a = "step")
  private long r;
  
  @eks(a = "legacies")
  private List<kuo> s;
  
  public long a() {
    return this.r;
  }
  
  public void a(long paramLong) {
    this.r = paramLong;
  }
  
  public void a(Boolean paramBoolean) {
    this.l = paramBoolean;
  }
  
  public void a(Double paramDouble) {
    this.e = paramDouble;
  }
  
  public void a(Integer paramInteger) {
    this.b = paramInteger;
  }
  
  public void a(Long paramLong) {
    this.c = paramLong;
  }
  
  public void a(String paramString) {
    this.o = paramString;
  }
  
  public void a(Date paramDate) {
    this.q = paramDate;
  }
  
  public void a(List<kux> paramList) {
    this.p = paramList;
  }
  
  public void a(kuq paramkuq) {
    this.a = paramkuq;
  }
  
  public void a(kuz paramkuz) {
    this.g = paramkuz;
  }
  
  public void a(kvf paramkvf) {
    this.h = paramkvf;
  }
  
  public Date b() {
    return this.q;
  }
  
  public void b(long paramLong) {
    this.m = Long.valueOf(paramLong);
  }
  
  public void b(Long paramLong) {
    this.n = paramLong;
  }
  
  public void b(String paramString) {
    this.f = paramString;
  }
  
  public void b(Date paramDate) {
    this.d = paramDate;
  }
  
  public void b(List<kuo> paramList) {
    this.s = paramList;
  }
  
  public String c() {
    return this.o;
  }
  
  public void c(String paramString) {
    this.i = paramString;
  }
  
  public List<kux> d() {
    return this.p;
  }
  
  public void d(String paramString) {
    this.j = paramString;
  }
  
  public long e() {
    return this.m.longValue();
  }
  
  public void e(String paramString) {
    this.k = paramString;
  }
  
  public kuz f() {
    return this.g;
  }
  
  public kuq g() {
    return this.a;
  }
  
  public Integer h() {
    return this.b;
  }
  
  public Long i() {
    return this.c;
  }
  
  public Date j() {
    return this.d;
  }
  
  public Double k() {
    return this.e;
  }
  
  public String l() {
    return this.f;
  }
  
  public kvf m() {
    return this.h;
  }
  
  public String n() {
    return this.i;
  }
  
  public String o() {
    return this.j;
  }
  
  public String p() {
    return this.k;
  }
  
  public Boolean q() {
    return this.l;
  }
  
  public long r() {
    return this.n.longValue();
  }
  
  public List<kuo> s() {
    return this.s;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kva.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */