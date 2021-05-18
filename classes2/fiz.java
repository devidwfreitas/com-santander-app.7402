import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PagamentoCartoesConfirmacaoAction;

public class fiz extends AsyncTask<Void, Void, fud> {
  private fiz(PagamentoCartoesConfirmacaoAction paramPagamentoCartoesConfirmacaoAction) {}
  
  protected fud a(Void... paramVarArgs) {
    try {
      return hat.i().a(PagamentoCartoesConfirmacaoAction.c(this.a), PagamentoCartoesConfirmacaoAction.d(this.a), PagamentoCartoesConfirmacaoAction.e(this.a), PagamentoCartoesConfirmacaoAction.f(this.a), Boolean.valueOf(PagamentoCartoesConfirmacaoAction.g(this.a)));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fud paramfud) {
    if (paramfud != null && !paramfud.hasError()) {
      if (this.a.a != null && this.a.a.isShowing()) {
        this.a.a.cancel();
        this.a.a = null;
      } 
      if (paramfud.i() != null && paramfud.i().equals("0")) {
        PagamentoCartoesConfirmacaoAction.h(this.a);
        return;
      } 
      hat.d().a(PagamentoCartoesConfirmacaoAction.b(this.a), paramfud, true);
      return;
    } 
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    hat.d().a(PagamentoCartoesConfirmacaoAction.b(this.a), paramfud, true);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(PagamentoCartoesConfirmacaoAction.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fiz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */