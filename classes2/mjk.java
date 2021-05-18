import android.app.Activity;

public class mjk implements mji {
  private final Activity a;
  
  private mjj b;
  
  private mki c;
  
  private mip d;
  
  public mjk(mjj parammjj, Activity paramActivity) {
    this.b = parammjj;
    this.c = new mkc();
    this.d = (mip)miq.C();
    this.a = paramActivity;
  }
  
  private goe b(miv parammiv) {
    parammiv.setAgencia(this.d.f().f());
    parammiv.a("0033");
    parammiv.c(this.d.f().g());
    parammiv.setConnUuid(this.d.i());
    parammiv.setTokenSessao(this.d.j());
    parammiv.setTokenTransacao(this.d.f().m());
    return (goe)parammiv;
  }
  
  private goe b(mje parammje) {
    parammje.setAgencia(this.d.f().f());
    parammje.a("false");
    parammje.setConta(this.d.f().g());
    parammje.setConnUuid(this.d.i());
    parammje.setTokenSessao(this.d.j());
    parammje.setTokenTransacao(this.d.f().m());
    parammje.b("");
    parammje.c("");
    parammje.d("");
    parammje.f("");
    parammje.g("");
    parammje.h("");
    parammje.j("");
    parammje.l("");
    parammje.m("");
    parammje.n("");
    parammje.o("");
    parammje.q("");
    parammje.r("");
    parammje.s("");
    parammje.t("");
    return (goe)parammje;
  }
  
  public void a(miv parammiv) {
    this.c.c(new mjm(this), b(parammiv));
  }
  
  public void a(mix parammix) {
    this.c.a(new mjl(this), (goe)b(parammix));
  }
  
  public void a(mje parammje) {
    this.c.d(new mjn(this), b(parammje));
  }
  
  public void a(mjg parammjg) {
    this.c.a(new mjo(this), (goe)b(parammjg));
  }
  
  public mix b(mix parammix) {
    mix mix1 = new mix();
    mix1.m(parammix.m());
    mix1.setAgencia(this.d.f().f());
    mix1.setConta(this.d.f().g());
    mix1.setConnUuid(this.d.i());
    mix1.setTokenSessao(this.d.j());
    mix1.setTokenTransacao(this.d.f().m());
    mix1.b("false");
    mix1.a("");
    mix1.c("");
    mix1.d("");
    mix1.e("");
    mix1.f("");
    mix1.g("");
    mix1.h("");
    mix1.i("");
    mix1.h("");
    mix1.j("");
    mix1.k("");
    mix1.l("");
    mix1.a("");
    mix1.n("");
    mix1.o("");
    mix1.p("");
    mix1.q("");
    mix1.r("");
    mix1.s("");
    mix1.t("");
    mix1.u("");
    mix1.v("");
    return mix1;
  }
  
  public mjg b(mjg parammjg) {
    mjg mjg1 = new mjg();
    mjg1.setAgencia(parammjg.getAgencia());
    mjg1.a(parammjg.a());
    mjg1.b(parammjg.b());
    mjg1.setConnUuid(miq.C().i());
    mjg1.c(parammjg.getConta());
    mjg1.setTokenSessao(miq.C().j());
    mjg1.setTokenTransacao(miq.C().f().m());
    return mjg1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mjk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */