import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FazerPagamentoActivity;

public class fhk extends AsyncTask<Void, Void, fvh> {
  private fhk(FazerPagamentoActivity paramFazerPagamentoActivity) {}
  
  protected fvh a(Void... paramVarArgs) {
    try {
      return hat.k().a(FazerPagamentoActivity.g(this.a));
    } catch (Exception exception) {
      Log.e("FazerPagamentoActivity", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fvh paramfvh) {
    if (FazerPagamentoActivity.c(this.a) != null && FazerPagamentoActivity.c(this.a).isShowing()) {
      FazerPagamentoActivity.c(this.a).cancel();
      FazerPagamentoActivity.a(this.a, null);
    } 
    if (paramfvh == null || paramfvh.hasError())
      hat.d().a(this.a.i, paramfvh, true, false); 
    if (paramfvh != null && !paramfvh.hasError()) {
      if (paramfvh.t() == null || paramfvh.t().length() == 0) {
        paramfvh.n(FazerPagamentoActivity.g(this.a).o());
        paramfvh.p(FazerPagamentoActivity.g(this.a).q());
        paramfvh.o(FazerPagamentoActivity.g(this.a).p());
        paramfvh.q(FazerPagamentoActivity.g(this.a).r());
        paramfvh.v(FazerPagamentoActivity.g(this.a).w());
        FazerPagamentoActivity.a(this.a, paramfvh);
        hau.a().a(FazerPagamentoActivity.g(this.a));
        FazerPagamentoActivity.h(this.a);
        return;
      } 
    } else {
      return;
    } 
    if (paramfvh.t().length() > 0) {
      hat.d().a(this.a.i, paramfvh.t());
      return;
    } 
    if (paramfvh.getFaultstring() != null && paramfvh.getFaultstring().length() > 0) {
      hat.d().a(this.a.i, paramfvh.getFaultstring());
      return;
    } 
    hat.d().a(this.a.i, paramfvh, true, false);
  }
  
  public void onPreExecute() {
    FazerPagamentoActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */