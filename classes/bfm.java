import java.io.Serializable;

public class bfm implements Serializable {
  protected int a;
  
  protected bfx b;
  
  protected bgb c;
  
  private bgl d;
  
  private int e;
  
  public bfm(bgl parambgl) {
    this.d = parambgl;
    this.b = new bfx();
    this.c = new bgb();
    this.e = parambgl.a(this);
  }
  
  public int a() {
    return this.e;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(bfx parambfx) {
    this.b = parambfx;
  }
  
  public void a(String paramString) {
    this.d.e(this, paramString);
  }
  
  public int b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.d.g(this, paramString);
  }
  
  public bfx c() {
    return this.b;
  }
  
  public void c(String paramString) {
    this.d.i(this, paramString);
  }
  
  public bgb d() {
    if (this.c == null)
      this.c = new bgb(); 
    if (this.d != null)
      this.d.a(this, this.c); 
    return this.c;
  }
  
  public void d(String paramString) {
    this.d.h(this, paramString);
  }
  
  public int e() {
    return d().a();
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.e != ((bfm)paramObject).e)
        return false; 
      if (this.a != ((bfm)paramObject).a)
        return false; 
      if ((this.d != null) ? !this.d.equals(((bfm)paramObject).d) : (((bfm)paramObject).d != null))
        return false; 
      if ((this.b != null) ? !this.b.a().equals(((bfm)paramObject).b.a()) : (((bfm)paramObject).b != null))
        return false; 
      if ((this.c != null) ? !this.c.equals(((bfm)paramObject).c) : (((bfm)paramObject).c != null))
        return false; 
    } 
    return true;
  }
  
  public String f() {
    return d().b();
  }
  
  public String g() {
    return d().c();
  }
  
  public int h() {
    return d().d();
  }
  
  public String i() {
    return d().e();
  }
  
  public int j() {
    return d().f();
  }
  
  public int k() {
    return d().g();
  }
  
  public int l() {
    return d().h();
  }
  
  public int m() {
    return d().i();
  }
  
  public int n() {
    return d().j();
  }
  
  public int o() {
    return d().k();
  }
  
  public int p() {
    return d().l();
  }
  
  public int q() {
    return d().m();
  }
  
  public int r() {
    return d().n();
  }
  
  public String s() {
    return d().o();
  }
  
  public int t() {
    return d().p();
  }
  
  public int u() {
    return d().q();
  }
  
  public int v() {
    return d().r();
  }
  
  public int w() {
    return d().s();
  }
  
  public String x() {
    return d().t();
  }
  
  public String y() {
    return d().u();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */