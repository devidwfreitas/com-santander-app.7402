import java.util.ArrayList;
import java.util.List;

public class gkc implements gke {
  private mip a = (mip)miq.C();
  
  private gkf a() {
    gkf gkf = new gkf();
    gkf.a(new ArrayList());
    for (ghu ghu : this.a.f().s().a()) {
      String str;
      ioz ioz = new ioz();
      if (ghu.B() != null) {
        str = ghu.B().trim();
      } else {
        str = "";
      } 
      ioz.n(str);
      if (ghu.e() != null) {
        str = ghu.e().trim();
      } else {
        str = "";
      } 
      ioz.b(str);
      gkf.a().add(ioz);
    } 
    gkf.setConnUuid(this.a.i());
    gkf.setTokenSessao(this.a.j());
    return gkf;
  }
  
  private void a(List<ioz> paramList) {
    this.a.f().s().b(paramList);
  }
  
  public void a(foh paramfoh) {
    gkf gkf = a();
    (new ggr(new gkd(this, paramfoh))).execute((Object[])new gkf[] { gkf });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gkc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */