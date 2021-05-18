import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaAplicacaoActivity;
import com.santander.app.contacorrente.domain.Conta;

public class fmg extends AsyncTask<Void, Void, fto> {
  private fmg(RendaFixaAplicacaoActivity paramRendaFixaAplicacaoActivity) {}
  
  protected fto a(Void... paramVarArgs) {
    try {
      Conta conta = this.a.v.f().q().a().get(RendaFixaAplicacaoActivity.j(this.a).a());
      return hat.j().a(conta.getAgencia(), conta.getCuenta(), RendaFixaAplicacaoActivity.e(this.a).a());
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fto paramfto) {
    if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
      RendaFixaAplicacaoActivity.g(this.a).cancel();
      RendaFixaAplicacaoActivity.a(this.a, null);
    } 
    if (paramfto == null || paramfto.hasError()) {
      hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), paramfto, true);
      return;
    } 
    if (!"ok".equalsIgnoreCase(paramfto.u())) {
      mxn.b((Activity)RendaFixaAplicacaoActivity.c(this.a), paramfto.u());
      return;
    } 
    if ("0".equals(paramfto.p()) && !paramfto.hasError()) {
      RendaFixaAplicacaoActivity.a(this.a, new fmf(this.a, null));
      RendaFixaAplicacaoActivity.l(this.a).execute((Object[])new Void[0]);
      return;
    } 
  }
  
  protected void onPreExecute() {
    if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing())
      RendaFixaAplicacaoActivity.g(this.a).cancel(); 
    RendaFixaAplicacaoActivity.a(this.a, mxn.b((Activity)RendaFixaAplicacaoActivity.c(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */