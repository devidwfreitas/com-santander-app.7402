import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

public class gio implements gim {
  private mip a = (mip)miq.C();
  
  private Activity b;
  
  private gin c;
  
  private gjr d;
  
  private boolean e;
  
  public gio(Activity paramActivity, gin paramgin) {
    this.b = paramActivity;
    this.c = paramgin;
    if (this.a.f().e().booleanValue()) {
      this.d = new gjn(paramActivity);
    } else {
      this.d = new gjs(paramActivity);
    } 
    this.e = this.a.f().e().booleanValue();
  }
  
  private ghx a(ghw paramghw, ghu paramghu, String paramString1, String paramString2) {
    paramString2 = naj.B(paramString2);
    ghx ghx = new ghx();
    ghx.setConnUuid(this.a.i());
    ghx.setTokenSessao(this.a.j());
    ghx.setTokenTransacao(this.a.f().m());
    ghx.a(paramghu.d());
    ghx.b(paramghu.H());
    ghx.c(paramString1);
    ghx.d(paramString2);
    ghx.e(paramghw.u());
    ghx.f(paramghw.w());
    ghx.g(paramghw.e());
    ghx.h(paramghw.g());
    ghx.i(paramghw.h());
    ghx.j(paramghw.i());
    return ghx;
  }
  
  private ghy a(ghv paramghv, ghu paramghu, String paramString1, String paramString2) {
    String str = naj.B(paramghv.w());
    paramString2 = naj.B(paramString2);
    ghy ghy = new ghy();
    ghy.setConnUuid(this.a.i());
    ghy.setTokenSessao(this.a.j());
    ghy.setTokenTransacao(this.a.f().m());
    ghy.b(mzr.f());
    ghy.setAgencia(mzr.e());
    ghy.g(mzr.h());
    ghy.h(paramghu.H());
    ghy.a(paramghv.c());
    ghy.c(paramghv.e());
    ghy.d(paramghv.g());
    ghy.e(paramghv.h());
    ghy.f(paramghv.i());
    ghy.i(paramghv.o());
    ghy.j(paramString1);
    ghy.k(paramString2);
    ghy.l(paramghv.u());
    ghy.m(str);
    return ghy;
  }
  
  private gih a(ghv paramghv, ghu paramghu) {
    gih gih = new gih();
    gih.setAgencia(paramghu.s());
    gih.a(false);
    gih.c("0");
    gih.d(mzr.f());
    gih.e(paramghv.e());
    gih.f(paramghv.f());
    gih.k(paramghv.g());
    gih.l(paramghv.h());
    gih.m(paramghv.i());
    gih.n(mzr.h());
    gih.a(paramghv.k());
    gih.t(paramghu.H());
    gih.v(paramghv.o());
    gih.x(paramghv.p());
    gih.z(paramghv.q());
    gih.C(paramghv.t());
    gih.A(paramghv.r());
    gih.B(paramghv.s());
    gih.D(paramghv.u());
    gih.E(paramghv.v());
    gih.F(paramghv.w());
    gih.setTokenSessao(this.a.j());
    gih.setTokenTransacao(this.a.f().m());
    gih.setConnUuid(this.a.i());
    return gih;
  }
  
  private void a(ghv paramghv, gif paramgif) {
    for (gif gif1 : paramghv.k()) {
      if (gif1.equals(paramgif)) {
        gif1.b("true");
        continue;
      } 
      gif1.b("false");
    } 
  }
  
  private gic b(ghu paramghu) {
    gic gic = new gic();
    gic.setConnUuid(this.a.i());
    gic.setTokenSessao(this.a.j());
    gic.setTokenTransacao(this.a.f().m());
    gic.a(mzr.f());
    gic.setAgencia(mzr.e());
    gic.c(mzr.h());
    gic.b(paramghu.H());
    return gic;
  }
  
  private gib c(ghu paramghu) {
    gib gib = new gib();
    gib.setConnUuid(this.a.i());
    gib.setTokenSessao(this.a.j());
    gib.setTokenTransacao(this.a.f().m());
    gib.a(paramghu.d());
    gib.b(paramghu.H());
    return gib;
  }
  
  public List<ghu> a() {
    return this.a.f().s().f();
  }
  
  public void a(ghu paramghu) {
    gib gib;
    gic gic;
    gjr gjr1 = this.d;
    gip gip = new gip(this);
    if (this.e) {
      gib = c(paramghu);
    } else {
      gic = b((ghu)gib);
    } 
    gjr1.a(gip, (goe)gic);
  }
  
  public void a(ghv paramghv, ghu paramghu, gif paramgif) {
    a(paramghv, paramgif);
    this.d.c(new gir(this), (goe)a(paramghv, paramghu));
  }
  
  public void a(gnb paramgnb, ghu paramghu, String paramString1, String paramString2) {
    ghx ghx;
    ghy ghy;
    gjr gjr1 = this.d;
    giq giq = new giq(this);
    if (this.e) {
      ghx = a((ghw)paramgnb, paramghu, paramString1, paramString2);
    } else {
      ghy = a((ghv)ghx, paramghu, paramString1, paramString2);
    } 
    gjr1.b(giq, (goe)ghy);
  }
  
  public List<String> b() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("Parcelas Fixas");
    arrayList.add("Valor Parcial (Entrada + Parcelas Fixas)");
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */