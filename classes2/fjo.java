import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PagamentoFacturaCartoesActivity;

public class fjo extends AsyncTask<Void, Void, fud> {
  private fjo(PagamentoFacturaCartoesActivity paramPagamentoFacturaCartoesActivity) {}
  
  protected fud a(Void... paramVarArgs) {
    fud fud;
    try {
      ghu ghu = this.a.v.f().s().f().get(PagamentoFacturaCartoesActivity.f(this.a).a());
      fud = ghu.o();
      if (fud == null)
        return hat.i().d(ghu); 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
    return fud;
  }
  
  protected void a(fud paramfud) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfud == null) {
      hat.d().a(PagamentoFacturaCartoesActivity.b(this.a), paramfud, true, true);
      return;
    } 
    if (paramfud.hasError()) {
      hat.d().a(PagamentoFacturaCartoesActivity.b(this.a), paramfud, true, true);
      return;
    } 
    ((ghu)this.a.v.f().s().f().get(PagamentoFacturaCartoesActivity.f(this.a).a())).a(paramfud);
    PagamentoFacturaCartoesActivity.a(this.a, paramfud);
    frq.d("Cartoes_PagamentoDaFatura_ReferOper", PagamentoFacturaCartoesActivity.a(this.a).f());
    PagamentoFacturaCartoesActivity.l(this.a);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(PagamentoFacturaCartoesActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */