import android.util.Log;

public class gkq {
  private gkp a() {
    gkp gkp = new gkp();
    gkp.setConnUuid(miq.C().i());
    gkp.setTokenSessao(miq.C().j());
    gkp.setTokenTransacao(miq.C().f().m());
    return gkp;
  }
  
  public void a(foh paramfoh) {
    gks gks = new gks(paramfoh);
    try {
      gks.execute((Object[])new gkp[] { a() });
      return;
    } catch (Exception exception) {
      Log.e("OBTERTICKETCHAT", exception.getMessage());
      return;
    } 
  }
  
  public void b(foh paramfoh) {
    (new nea(new gkr(this, paramfoh))).a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gkq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */