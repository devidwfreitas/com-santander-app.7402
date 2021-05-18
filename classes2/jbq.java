import android.app.Activity;

public class jbq {
  private gkw a;
  
  private Activity b;
  
  private mip c;
  
  public jbq(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.b = paramActivity;
    this.c = (mip)miq.C();
  }
  
  public void a() {
    nay nay = new nay();
    nay.setConnUuid(this.c.i());
    nay.setTokenSessao(this.c.j());
    nay.setTokenTransacao(this.c.f().m());
    (new neo(new jbt(this))).c((Object[])new nay[] { nay });
  }
  
  public void a(iuz paramiuz) {
    ivi ivi = new ivi();
    ivi.setConnUuid(this.c.i());
    ivi.setTokenSessao(this.c.j());
    ivi.setTokenTransacao(this.c.f().m());
    ivi.b(paramiuz.a());
    ivi.c(paramiuz.c());
    ivi.a(this.c.f().y().c().a());
    (new jby(new jbr(this), this.b)).c((Object[])new ivi[] { ivi });
  }
  
  public void b(iuz paramiuz) {
    ivi ivi = new ivi();
    ivi.setConnUuid(this.c.i());
    ivi.setTokenSessao(this.c.j());
    ivi.setTokenTransacao(this.c.f().m());
    ivi.b(paramiuz.a());
    ivi.c(paramiuz.c());
    ivi.a(this.c.f().y().c().a());
    (new jcb(new jbs(this), this.b)).c((Object[])new ivi[] { ivi });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jbq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */