import android.app.Activity;

public class jrg {
  private gkw a;
  
  private Activity b;
  
  private mip c;
  
  public jrg(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.c = (mip)miq.C();
    this.b = paramActivity;
  }
  
  public void a(String paramString1, String paramString2) {
    jqb jqb = new jqb();
    jqb.setConnUuid(this.c.i());
    jqb.setTokenSessao(this.c.j());
    jqb.setTokenTransacao(this.c.f().m());
    try {
      naf naf = new naf();
      jqb.a(naf.b(paramString1.getBytes("UTF-8")));
      jqb.b(naf.b(paramString2.getBytes("UTF-8")));
    } catch (Exception exception) {
      jqb.a("");
      jqb.b("");
    } 
    (new jri(new jrh(this), this.b)).c((Object[])new jqb[] { jqb });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */