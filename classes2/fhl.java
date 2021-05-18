import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FazerPagamentoActivity;

public class fhl extends AsyncTask<Void, Void, fvi> {
  private fhl(FazerPagamentoActivity paramFazerPagamentoActivity) {}
  
  protected fvi a(Void... paramVarArgs) {
    try {
      return hat.k().a(FazerPagamentoActivity.b(this.a));
    } catch (Exception exception) {
      Log.e("FazerPagamentoActivity", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fvi paramfvi) {
    if (FazerPagamentoActivity.c(this.a) != null && FazerPagamentoActivity.c(this.a).isShowing()) {
      FazerPagamentoActivity.c(this.a).cancel();
      FazerPagamentoActivity.a(this.a, null);
    } 
    if (paramfvi == null) {
      hat.d().a(this.a.i, paramfvi, true, false);
      return;
    } 
    if (paramfvi.hasError()) {
      hat.d().a(this.a.i, paramfvi, true, false);
      return;
    } 
    paramfvi.a(FazerPagamentoActivity.b(this.a).s());
    paramfvi.h(FazerPagamentoActivity.b(this.a).h());
    paramfvi.j(FazerPagamentoActivity.b(this.a).j());
    paramfvi.k(FazerPagamentoActivity.b(this.a).k());
    paramfvi.g(FazerPagamentoActivity.b(this.a).g());
    paramfvi.b(FazerPagamentoActivity.b(this.a).b());
    FazerPagamentoActivity.a(this.a, paramfvi);
    hau.a().a(paramfvi);
    if (paramfvi.l().length() > 0) {
      FazerPagamentoActivity.d(this.a);
      return;
    } 
    if (paramfvi.i().length() > 1) {
      hat.d().a(this.a.i, paramfvi.i());
      return;
    } 
    if (paramfvi.getFaultstring() != null && paramfvi.getFaultstring().length() > 0) {
      hat.d().a(this.a.i, paramfvi.getFaultstring());
      return;
    } 
    hat.d().a(this.a.i, paramfvi, true, false);
  }
  
  public void onPreExecute() {
    FazerPagamentoActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */