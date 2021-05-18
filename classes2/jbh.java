import android.app.Activity;
import android.util.Log;

public class jbh {
  private gkw a;
  
  private Activity b;
  
  private mip c;
  
  public jbh(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.b = paramActivity;
    this.c = (mip)miq.C();
  }
  
  public void a() {
    ivg ivg = new ivg();
    ivg.setConnUuid(this.c.i());
    ivg.setTokenSessao(this.c.j());
    ivg.setTokenTransacao(this.c.f().m());
    (new jca(new jbi(this), this.b)).c((Object[])new ivg[] { ivg });
  }
  
  public void a(String paramString1, String paramString2) {
    iuw iuw = new iuw();
    iuw.setConnUuid(this.c.i());
    iuw.setTokenSessao(this.c.j());
    iuw.setTokenTransacao(this.c.f().m());
    iuw.a(paramString1);
    try {
      iuw.b((new naf()).b(paramString2.getBytes("UTF-8")));
    } catch (Exception exception) {
      Log.e("ERROR_ENCRYPT", exception.getMessage());
    } 
    (new jbv(new jbj(this), this.b)).c((Object[])new iuw[] { iuw });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jbh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */