import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FazerPagamentoConfirmacaoActivity;

public class fhv extends AsyncTask<Void, Void, fvj> {
  private fhv(FazerPagamentoConfirmacaoActivity paramFazerPagamentoConfirmacaoActivity) {}
  
  protected fvj a(Void... paramVarArgs) {
    try {
      FazerPagamentoConfirmacaoActivity.a(this.a, hau.a().p());
      FazerPagamentoConfirmacaoActivity.b(this.a).o("CC");
      return hat.k().b(FazerPagamentoConfirmacaoActivity.b(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      fvj fvj = new fvj();
      fvj.a("Fail");
      return fvj;
    } 
  }
  
  protected void a(fvj paramfvj) {
    mzp mzp;
    if (paramfvj != null && !paramfvj.hasError()) {
      if (paramfvj.a() != null && paramfvj.a().equals("OK")) {
        mzp = mzp.RELOAD_CONTA;
        mzn mzn = new mzn();
        fhw fhw = new fhw(this);
        mzn.a(new mzp[] { mzp }, fhw);
        return;
      } 
      if (mzp.a() != null) {
        FazerPagamentoConfirmacaoActivity.c(this.a);
        FazerPagamentoConfirmacaoActivity.a(this.a, mzp.a());
        return;
      } 
      FazerPagamentoConfirmacaoActivity.c(this.a);
      FazerPagamentoConfirmacaoActivity.a(this.a, "");
      return;
    } 
    if (mzp == null || mzp.hasError()) {
      hat.d().a((Activity)FazerPagamentoConfirmacaoActivity.a(this.a), (fvu)mzp, true, false);
      return;
    } 
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b((Activity)FazerPagamentoConfirmacaoActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */