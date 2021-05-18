import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FazerPagamentoConfirmacaoActivity;

public class fhx extends AsyncTask<Void, Void, fvk> {
  private fhx(FazerPagamentoConfirmacaoActivity paramFazerPagamentoConfirmacaoActivity) {}
  
  protected fvk a(Void... paramVarArgs) {
    try {
      FazerPagamentoConfirmacaoActivity.a(this.a, hau.a().q());
      FazerPagamentoConfirmacaoActivity.e(this.a).H("CC");
      return hat.k().b(FazerPagamentoConfirmacaoActivity.e(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fvk paramfvk) {
    mzp mzp;
    if (paramfvk == null) {
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.b(this.a, "");
      return;
    } 
    if (paramfvk.hasError()) {
      if (paramfvk.z().length() > 1) {
        FazerPagamentoConfirmacaoActivity.c(this.a);
        FazerPagamentoConfirmacaoActivity.b(this.a, paramfvk.z());
      } else if (paramfvk.getFaultstring() != null && paramfvk.getFaultstring().length() > 0) {
        FazerPagamentoConfirmacaoActivity.c(this.a);
        FazerPagamentoConfirmacaoActivity.b(this.a, paramfvk.getFaultstring());
      } else {
        FazerPagamentoConfirmacaoActivity.c(this.a);
        FazerPagamentoConfirmacaoActivity.b(this.a, "");
      } 
      hat.d().a((Activity)FazerPagamentoConfirmacaoActivity.a(this.a), paramfvk, false, false);
      return;
    } 
    FazerPagamentoConfirmacaoActivity.a(this.a, paramfvk);
    if (paramfvk.c().equals("OK") || (paramfvk.z().length() == 1 && (paramfvk.getFaultstring() == null || paramfvk.getFaultstring().length() == 0))) {
      mzp = mzp.RELOAD_CONTA;
      mzn mzn = new mzn();
      fhy fhy = new fhy(this);
      mzn.a(new mzp[] { mzp }, fhy);
      return;
    } 
    if (mzp.z().length() > 1) {
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.b(this.a, mzp.z());
      return;
    } 
    if (mzp.getFaultstring() != null && mzp.getFaultstring().length() > 0) {
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.b(this.a, mzp.getFaultstring());
      return;
    } 
    FazerPagamentoConfirmacaoActivity.c(this.a);
    FazerPagamentoConfirmacaoActivity.b(this.a, "");
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b((Activity)FazerPagamentoConfirmacaoActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */