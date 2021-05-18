public class jbo {
  private gkw a;
  
  private mip b;
  
  public jbo(gkw paramgkw) {
    this.a = paramgkw;
    this.b = (mip)miq.C();
  }
  
  public void a() {
    iuy iuy = new iuy();
    iuy.setConnUuid(this.b.i());
    iuy.setTokenSessao(this.b.j());
    iuy.setTokenTransacao(this.b.f().m());
    (new jbw(new jbp(this))).c((Object[])new iuy[] { iuy });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jbo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */