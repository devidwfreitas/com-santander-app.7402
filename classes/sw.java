public class sw extends abv implements abx {
  @ekq
  @eks(a = "netValue")
  private String a;
  
  @ekq
  @eks(a = "grossValue")
  private String b;
  
  @ekq
  @eks(a = "lockedValue")
  private Double c;
  
  @ekq
  @eks(a = "judiciarylockedValue")
  private Double d;
  
  @ekq
  @eks(a = "incomeTaxValue")
  private Double e;
  
  @ekq
  @eks(a = "financialTransactionTaxValue")
  private Double f;
  
  @ekq
  @eks(a = "newSavingRuleValue")
  private Double g;
  
  @ekq
  @eks(a = "oldSavingRuleValue")
  private Double h;
  
  @ekq
  @eks(a = "referenceDate")
  private String i;
  
  public Double a() {
    try {
      double d = Double.parseDouble(this.a);
      return Double.valueOf(d);
    } catch (Exception exception) {
      return Double.valueOf(0.0D);
    } 
  }
  
  public void a(Double paramDouble) {
    if (paramDouble != null)
      this.a = paramDouble.toString(); 
  }
  
  public void a(String paramString) {
    this.i = paramString;
  }
  
  public Double b() {
    try {
      double d = Double.parseDouble(this.b);
      return Double.valueOf(d);
    } catch (Exception exception) {
      return Double.valueOf(0.0D);
    } 
  }
  
  public void b(Double paramDouble) {
    if (paramDouble != null)
      this.b = paramDouble.toString(); 
  }
  
  public Double c() {
    return this.c;
  }
  
  public void c(Double paramDouble) {
    this.c = paramDouble;
  }
  
  public Double d() {
    return this.d;
  }
  
  public void d(Double paramDouble) {
    this.d = paramDouble;
  }
  
  public Double e() {
    return this.e;
  }
  
  public void e(Double paramDouble) {
    this.e = paramDouble;
  }
  
  public void f() {}
  
  public void f(Double paramDouble) {
    this.g = paramDouble;
  }
  
  public void g() {
    this.a = n(this.a);
    this.b = n(this.b);
  }
  
  public void g(Double paramDouble) {
    this.h = paramDouble;
  }
  
  public Double h() {
    return this.f;
  }
  
  public void h(Double paramDouble) {
    this.f = paramDouble;
  }
  
  public Double i() {
    return this.g;
  }
  
  public Double j() {
    return this.h;
  }
  
  public String k() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\sw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */