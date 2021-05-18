import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PoupancaAplicacaoActivity;
import com.santander.app.contacorrente.domain.Conta;

public class fki extends AsyncTask<Void, Void, fsy> {
  private String b;
  
  private fki(PoupancaAplicacaoActivity paramPoupancaAplicacaoActivity) {}
  
  private void a(fsy paramfsy, Conta paramConta) {
    if (paramfsy.m() == null || "".equals(paramfsy.m())) {
      this.a.openConfirmar(paramfsy, (fuu)paramConta);
      return;
    } 
    mxn.b((Activity)PoupancaAplicacaoActivity.h(this.a), paramfsy.m());
  }
  
  protected fsy a(Void... paramVarArgs) {
    try {
      Conta conta = this.a.v.f().q().a().get(PoupancaAplicacaoActivity.k(this.a).a());
      return hat.j().a(this.b, PoupancaAplicacaoActivity.i(this.a), PoupancaAplicacaoActivity.f(this.a), conta.getAgencia(), conta.getCuenta());
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fsy paramfsy) {
    if (PoupancaAplicacaoActivity.j(this.a) != null && PoupancaAplicacaoActivity.j(this.a).isShowing()) {
      PoupancaAplicacaoActivity.j(this.a).cancel();
      PoupancaAplicacaoActivity.a(this.a, null);
    } 
    if (paramfsy == null)
      return; 
    if (paramfsy.hasError()) {
      hat.d().a((Activity)PoupancaAplicacaoActivity.h(this.a), paramfsy, false);
      return;
    } 
    a(paramfsy, this.a.v.f().q().a().get(PoupancaAplicacaoActivity.k(this.a).a()));
  }
  
  public void a(String paramString1, boolean paramBoolean, String paramString2) {
    PoupancaAplicacaoActivity.a(this.a, nak.u(paramString1));
    if (paramString1.equals(PoupancaAplicacaoActivity.f(this.a)))
      PoupancaAplicacaoActivity.a(this.a, nak.t(paramString1)); 
    PoupancaAplicacaoActivity.a(this.a, paramBoolean);
    PoupancaAplicacaoActivity.b(this.a, paramString2);
    this.b = paramString2;
  }
  
  public void onPreExecute() {
    PoupancaAplicacaoActivity.a(this.a, mxn.b((Activity)PoupancaAplicacaoActivity.h(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */