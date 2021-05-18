import android.app.Activity;

public class nec {
  private gkw a;
  
  private Activity b;
  
  private boolean c = false;
  
  private mip d;
  
  public nec(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.b = paramActivity;
    this.d = (mip)miq.C();
  }
  
  public nec(gkw paramgkw, Activity paramActivity, boolean paramBoolean) {
    this.a = paramgkw;
    this.b = paramActivity;
    this.d = (mip)miq.C();
    this.c = paramBoolean;
  }
  
  public void a() {
    (new nel(new ned(this), this.b)).c((Object[])new Void[0]);
  }
  
  public void a(String paramString) {
    if (this.c) {
      (new nem(new nef(this), this.b)).c((Object[])new String[] { paramString });
      return;
    } 
    (new nen(new neg(this), this.b)).c((Object[])new String[] { paramString });
  }
  
  public void b() {
    nay nay = new nay();
    nay.setConnUuid(this.d.i());
    nay.setTokenSessao(this.d.j());
    nay.setTokenTransacao(this.d.f().m());
    (new neo(new nee(this))).c((Object[])new nay[] { nay });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */