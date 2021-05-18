import android.app.Activity;

public class gik implements gii {
  private mip a = (mip)miq.C();
  
  private Activity b;
  
  private gij c;
  
  private gjr d;
  
  private boolean e;
  
  public gik(Activity paramActivity, gij paramgij) {
    this.b = paramActivity;
    this.c = paramgij;
    if (this.a.f().e().booleanValue()) {
      this.d = new gjn(paramActivity);
    } else {
      this.d = new gjs(paramActivity);
    } 
    this.e = this.a.f().e().booleanValue();
  }
  
  private gie b(ghw paramghw) {
    gie gie = new gie();
    gie.setConnUuid(this.a.i());
    gie.setTokenSessao(this.a.j());
    gie.setTokenTransacao(this.a.f().m());
    gie.b(paramghw.d());
    gie.a(paramghw.d());
    gie.c(paramghw.m());
    gie.h(paramghw.q());
    gie.i(paramghw.t());
    gie.j(paramghw.u());
    gie.k(paramghw.w());
    gie.d(paramghw.e());
    gie.e(paramghw.g());
    gie.f(paramghw.h());
    gie.g(paramghw.i());
    gie.a(paramghw.k());
    return gie;
  }
  
  public void a(ghw paramghw) {
    this.d.d(new gil(this), (goe)b(paramghw));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */