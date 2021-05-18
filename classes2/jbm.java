public class jbm {
  private gkw a;
  
  private mip b;
  
  public jbm(gkw paramgkw) {
    this.a = paramgkw;
    this.b = (mip)miq.C();
  }
  
  public void a(String paramString) {
    ivd ivd = new ivd();
    ivd.setConnUuid(this.b.i());
    ivd.setTokenSessao(this.b.j());
    ivd.setTokenTransacao(this.b.f().m());
    ivd.b(this.b.f().y().c().a());
    ivd.a(paramString);
    (new jbz(new jbn(this))).c((Object[])new ivd[] { ivd });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jbm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */