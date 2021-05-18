public class iba implements ibg {
  private mip a = (mip)miq.C();
  
  public hzf a(hzf paramhzf) {
    hzf hzf1 = new hzf();
    hzf1.setConnUuid(this.a.i());
    hzf1.setTokenSessao(this.a.j());
    hzf1.b(paramhzf.b());
    hzf1.a(paramhzf.a());
    hzf1.setTokenTransacao(this.a.f().m());
    return hzf1;
  }
  
  public hzi a(hzi paramhzi) {
    paramhzi.a(this.a.f().k());
    paramhzi.setConnUuid(this.a.i());
    paramhzi.setTokenSessao(this.a.j());
    return paramhzi;
  }
  
  public hzq a(hzq paramhzq) {
    paramhzq.setConnUuid(this.a.i());
    paramhzq.setTokenSessao(this.a.j());
    return paramhzq;
  }
  
  public void a(gkw<hzt> paramgkw) {
    miq miq = miq.C();
    hzs hzs = new hzs();
    hzs.setConnUuid(miq.i());
    hzs.setTokenSessao(miq.j());
    (new ibl(new ibd(this, paramgkw))).execute((Object[])new hzs[] { hzs });
  }
  
  public void a(gkw paramgkw, goe paramgoe) {
    (new ibh(new ibb(this, paramgkw))).execute((Object[])new hzf[] { a((hzf)paramgoe) });
  }
  
  public void a(hzk paramhzk) {
    paramhzk.setTokenSessao(this.a.j());
    paramhzk.setConnUuid(this.a.i());
    paramhzk.setTokenTransacao(this.a.f().m());
  }
  
  public void b(gkw paramgkw, goe paramgoe) {
    hzk hzk = (hzk)paramgoe;
    a(hzk);
    (new ibk(new ibc(this, paramgkw))).execute((Object[])new hzk[] { hzk });
  }
  
  public void c(gkw paramgkw, goe paramgoe) {
    (new ibi(new ibe(this, paramgkw))).execute((Object[])new hzi[] { a((hzi)paramgoe) });
  }
  
  public void d(gkw paramgkw, goe paramgoe) {
    (new ibj(new ibf(this, paramgkw))).execute((Object[])new hzq[] { a((hzq)paramgoe) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */