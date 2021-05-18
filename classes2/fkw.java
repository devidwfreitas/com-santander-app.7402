import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PoupancaResgateConfirmacaoActivity;

public class fkw extends AsyncTask<Void, Void, fts> {
  private fkw(PoupancaResgateConfirmacaoActivity paramPoupancaResgateConfirmacaoActivity) {}
  
  protected fts a(Void... paramVarArgs) {
    try {
      return hat.j().a(PoupancaResgateConfirmacaoActivity.b(this.a), PoupancaResgateConfirmacaoActivity.c(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fts paramfts) {
    if (paramfts == null) {
      hat.d().a((Activity)PoupancaResgateConfirmacaoActivity.a(this.a), paramfts, true);
      return;
    } 
    if (paramfts.hasError()) {
      paramfts.l(PoupancaResgateConfirmacaoActivity.c(this.a).l());
      paramfts.o(PoupancaResgateConfirmacaoActivity.c(this.a).o());
      paramfts.p(PoupancaResgateConfirmacaoActivity.c(this.a).p());
      paramfts.x(PoupancaResgateConfirmacaoActivity.c(this.a).x());
      paramfts.j(PoupancaResgateConfirmacaoActivity.c(this.a).j());
      paramfts.f(PoupancaResgateConfirmacaoActivity.c(this.a).f());
      PoupancaResgateConfirmacaoActivity.a(this.a, paramfts);
      PoupancaResgateConfirmacaoActivity.d(this.a);
      return;
    } 
    mzp mzp1 = mzp.RELOAD_CONTA;
    mzp mzp2 = mzp.RELOAD_POUPANCA;
    mzn mzn = new mzn();
    fkx fkx = new fkx(this, paramfts);
    mzn.a(new mzp[] { mzp1, mzp2 }, fkx);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b((Activity)PoupancaResgateConfirmacaoActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */