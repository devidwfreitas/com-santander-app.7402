import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FazerPagamentoActivity;

public class fhm extends AsyncTask<Void, Void, fvk> {
  private fhm(FazerPagamentoActivity paramFazerPagamentoActivity) {}
  
  protected fvk a(Void... paramVarArgs) {
    try {
      FazerPagamentoActivity.e(this.a).n("");
      return hat.k().a(FazerPagamentoActivity.e(this.a));
    } catch (Exception exception) {
      Log.e("FazerPagamentoActivity", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fvk paramfvk) {
    if (FazerPagamentoActivity.c(this.a) != null && FazerPagamentoActivity.c(this.a).isShowing()) {
      FazerPagamentoActivity.c(this.a).cancel();
      FazerPagamentoActivity.a(this.a, null);
    } 
    if (paramfvk == null) {
      hat.d().a(this.a.i, paramfvk, true, false);
      return;
    } 
    if (paramfvk.hasError()) {
      hat.d().a(this.a.i, paramfvk, true, false);
      return;
    } 
    paramfvk.a(FazerPagamentoActivity.e(this.a).X());
    paramfvk.s(FazerPagamentoActivity.e(this.a).s());
    paramfvk.U(FazerPagamentoActivity.e(this.a).U());
    paramfvk.D(FazerPagamentoActivity.e(this.a).D());
    paramfvk.C(FazerPagamentoActivity.e(this.a).C());
    paramfvk.t(FazerPagamentoActivity.e(this.a).t());
    FazerPagamentoActivity.a(this.a, paramfvk);
    hau.a().a(paramfvk);
    if (paramfvk.E().length() > 0) {
      FazerPagamentoActivity.f(this.a);
      return;
    } 
    if (paramfvk.z().length() > 1) {
      hat.d().a(this.a.i, paramfvk.z());
      return;
    } 
    if (paramfvk.getFaultstring() != null && paramfvk.getFaultstring().length() > 0) {
      hat.d().a(this.a.i, paramfvk.getFaultstring());
      return;
    } 
    hat.d().a(this.a.i, paramfvk, true, false);
  }
  
  public void onPreExecute() {
    FazerPagamentoActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */