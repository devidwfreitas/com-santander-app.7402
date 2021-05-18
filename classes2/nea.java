import android.util.Log;

public class nea {
  private gkw a;
  
  private mip b;
  
  public nea(gkw paramgkw) {
    this.a = paramgkw;
    this.b = (mip)miq.C();
  }
  
  public void a() {
    nay nay = new nay();
    nay.setConnUuid(this.b.i());
    nay.setTokenSessao(this.b.j());
    nay.setTokenTransacao(this.b.f().m());
    (new neo(new neb(this))).c((Object[])new nay[] { nay });
  }
  
  public String b() {
    Log.d("REFRESH", "init getNewTokenSync");
    nay nay = new nay();
    nay.setConnUuid(this.b.i());
    nay.setTokenSessao(this.b.j());
    nay.setTokenTransacao(this.b.f().m());
    try {
      nax nax = (new gog<nay, nax>()).a(nay, nax.class, has.Z(), "generateToken", "return");
      this.a.a(nax);
      Log.d("REFRESH", "FIM getNewTokenSync");
      return nax.getTokenTransacao();
    } catch (Exception exception) {
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */