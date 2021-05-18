import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PagamentoCartoesValidacionAction;

public class fje extends AsyncTask<Void, Void, fud> {
  private fje(PagamentoCartoesValidacionAction paramPagamentoCartoesValidacionAction) {}
  
  protected fud a(Void... paramVarArgs) {
    try {
      return hat.i().a(PagamentoCartoesValidacionAction.b(this.a), PagamentoCartoesValidacionAction.c(this.a), PagamentoCartoesValidacionAction.d(this.a), PagamentoCartoesValidacionAction.e(this.a), PagamentoCartoesValidacionAction.f(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fud paramfud) {
    mzp mzp;
    if (paramfud == null) {
      hat.d().a(PagamentoCartoesValidacionAction.a(this.a), paramfud, true);
      return;
    } 
    if (paramfud.hasError()) {
      PagamentoCartoesValidacionAction.a(this.a, paramfud.k());
      if (paramfud.getFaultstring() != null && !"".equals(paramfud.getFaultstring()) && paramfud.getFaultstring().contains("Tempo excedido"))
        PagamentoCartoesValidacionAction.a(this.a, "Tempo excedido, por favor verifique seu extrato"); 
      PagamentoCartoesValidacionAction.g(this.a);
      hat.d().a(PagamentoCartoesValidacionAction.a(this.a), paramfud, false);
      return;
    } 
    if (paramfud.i() != null && paramfud.i().equals("0")) {
      mzp = mzp.RELOAD_CONTA;
      mzp mzp1 = mzp.RELOAD_CARTOES;
      mzn mzn = new mzn();
      fjf fjf = new fjf(this);
      mzn.a(new mzp[] { mzp, mzp1 }, fjf);
      return;
    } 
    PagamentoCartoesValidacionAction.a(this.a, mzp.k());
    PagamentoCartoesValidacionAction.g(this.a);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(PagamentoCartoesValidacionAction.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fje.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */