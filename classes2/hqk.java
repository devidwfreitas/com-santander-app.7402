abstract class hqk implements hqi {
  private int a;
  
  protected mip b = (mip)miq.C();
  
  protected hxo c = this.b.f().u().a();
  
  private int d;
  
  private int e;
  
  private ipi f = this.b.f().C();
  
  private boolean a() {
    return this.f.b("00000071");
  }
  
  public void a(@hxu int paramInt, hqj paramhqj) {
    if (paramInt == 10) {
      paramhqj.a();
      return;
    } 
    if (paramInt == 11) {
      paramhqj.b();
      return;
    } 
    paramhqj.c();
  }
  
  public void a(hqj paramhqj) {
    a(this.d, paramhqj);
  }
  
  public void b(@hxu int paramInt) {
    this.e = paramInt;
  }
  
  public void b(hqj paramhqj) {
    a(this.a, paramhqj);
  }
  
  public void c(@hxu int paramInt) {
    this.d = paramInt;
  }
  
  public void d(@hxu int paramInt) {
    this.a = paramInt;
    c(paramInt);
  }
  
  public boolean o() {
    return (this.a == 11 || this.d == 11 || (!v() && u()));
  }
  
  public boolean p() {
    return (this.a == 10 || this.d == 10 || (v() && !u()));
  }
  
  public int q() {
    return this.e;
  }
  
  public int r() {
    return this.d;
  }
  
  public int s() {
    return this.a;
  }
  
  public boolean t() {
    return (u() && this.c.h().isEligivel());
  }
  
  public boolean u() {
    return (a() && this.c.h() != null);
  }
  
  public boolean v() {
    return (this.c.a() != null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hqk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */