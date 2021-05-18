import android.app.Activity;

public class jcr {
  private gkw a;
  
  private Activity b;
  
  private mip c;
  
  public jcr(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.b = paramActivity;
    this.c = (mip)miq.C();
  }
  
  public void a() {
    jci jci = new jci();
    jci.setConnUuid(this.c.i());
    jci.setTokenSessao(this.c.j());
    jci.a(this.c.f().m());
    (new jcu(new jcs(this), this.b)).execute((Object[])new jci[] { jci });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */