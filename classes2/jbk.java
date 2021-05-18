import android.app.Activity;

public class jbk {
  private gkw a;
  
  private Activity b;
  
  private mip c;
  
  public jbk(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.b = paramActivity;
    this.c = (mip)miq.C();
  }
  
  public void a() {
    ivb ivb = new ivb();
    ivb.setConnUuid(this.c.i());
    ivb.setTokenSessao(this.c.j());
    ivb.setTokenTransacao(this.c.f().m());
    ivb.a("S");
    (new jbx(new jbl(this), this.b)).c((Object[])new ivb[] { ivb });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jbk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */