import android.app.Activity;

public class gjm implements gin, gjl {
  private gji a;
  
  private Activity b;
  
  private gim c;
  
  private ghu d;
  
  public gjm(gji paramgji) {
    this.a = paramgji;
    this.b = (Activity)paramgji;
    this.c = new gio(this.b, this);
  }
  
  public void a() {
    this.a.a(this.c.a());
  }
  
  public void a(ghu paramghu) {
    this.d = paramghu;
    this.c.a(this.d);
  }
  
  public void a(ghv paramghv) {
    this.a.a(paramghv);
  }
  
  public void a(ghv paramghv, ghu paramghu, gif paramgif) {
    this.c.a(paramghv, paramghu, paramgif);
  }
  
  public void a(ghw paramghw) {
    this.a.a(paramghw);
  }
  
  public void a(ghz paramghz) {
    ghv ghv = new ghv();
    ghv.b(paramghz.b());
    ghv.d(paramghz.a());
    ghv.f(paramghz.d());
    ghv.g(paramghz.e());
    ghv.h(paramghz.f());
    ghv.m(paramghz.g());
    ghv.r(paramghz.h());
    ghv.s(paramghz.i());
    ghv.u(paramghz.j());
    a((gnb)ghv, this.d, "T", "00000000000");
  }
  
  public void a(gia paramgia) {
    ghw ghw = new ghw();
    ghw.b(paramgia.getCodErro());
    ghw.d(paramgia.a());
    ghw.f(paramgia.b());
    ghw.g(paramgia.c());
    ghw.h(paramgia.d());
    ghw.r(paramgia.l());
    ghw.s(paramgia.f());
    ghw.a(paramgia.e());
    ghw.u(paramgia.k());
    ghw.n(paramgia.g());
    ghw.q(paramgia.h());
    ghw.e(paramgia.j());
    ghw.t(paramgia.i());
    ghw.o("T");
    this.a.a(ghw);
  }
  
  public void a(gig paramgig) {
    this.a.a(paramgig);
  }
  
  public void a(gnb paramgnb, ghu paramghu, String paramString1, String paramString2) {
    this.c.a(paramgnb, paramghu, paramString1, paramString2);
  }
  
  public void b() {
    this.a.b(this.c.b());
  }
  
  public void b(ghv paramghv) {
    this.a.a(paramghv.l());
  }
  
  public void b(ghw paramghw) {
    this.a.a(paramghw.getMensagemErro());
  }
  
  public void b(ghz paramghz) {
    this.a.a(paramghz.l());
  }
  
  public void b(gia paramgia) {
    this.a.a(paramgia.getMensagemErro());
  }
  
  public void b(gig paramgig) {
    this.a.a(paramgig.l());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */