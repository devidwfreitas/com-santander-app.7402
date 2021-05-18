import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FazerPagamentoConfirmacaoActivity;

public class fht extends AsyncTask<Void, Void, fvh> {
  private fht(FazerPagamentoConfirmacaoActivity paramFazerPagamentoConfirmacaoActivity) {}
  
  protected fvh a(Void... paramVarArgs) {
    try {
      FazerPagamentoConfirmacaoActivity.a(this.a, hau.a().r());
      return hat.k().b(FazerPagamentoConfirmacaoActivity.g(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fvh paramfvh) {
    mzp mzp;
    if (paramfvh == null) {
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.c(this.a, "");
      return;
    } 
    if (paramfvh.hasError()) {
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.c(this.a, "");
      hat.d().a((Activity)FazerPagamentoConfirmacaoActivity.a(this.a), paramfvh, false, false);
      return;
    } 
    if (paramfvh.t() == null || paramfvh.t().length() == 0) {
      FazerPagamentoConfirmacaoActivity.g(this.a).u(paramfvh.v());
      FazerPagamentoConfirmacaoActivity.g(this.a).t(paramfvh.u());
      FazerPagamentoConfirmacaoActivity.g(this.a).w(paramfvh.x());
      FazerPagamentoConfirmacaoActivity.g(this.a).x(paramfvh.y());
      hau.a().a(FazerPagamentoConfirmacaoActivity.g(this.a));
      mzp = mzp.RELOAD_CONTA;
      mzn mzn = new mzn();
      fhu fhu = new fhu(this);
      mzn.a(new mzp[] { mzp }, fhu);
      return;
    } 
    if (mzp.t().length() > 0) {
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.c(this.a, mzp.t());
      return;
    } 
    if (mzp.getFaultstring() != null && mzp.getFaultstring().length() > 0) {
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.c(this.a, mzp.getFaultstring());
      return;
    } 
    FazerPagamentoConfirmacaoActivity.c(this.a);
    FazerPagamentoConfirmacaoActivity.c(this.a, "");
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b((Activity)FazerPagamentoConfirmacaoActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fht.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */