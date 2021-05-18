import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaAplicacaoActivity;
import com.santander.app.contacorrente.domain.Conta;

public class fmh extends AsyncTask<Void, Void, ftp> {
  private fmh(RendaFixaAplicacaoActivity paramRendaFixaAplicacaoActivity) {}
  
  protected ftp a(Void... paramVarArgs) {
    try {
      Conta conta = this.a.v.f().q().a().get(RendaFixaAplicacaoActivity.j(this.a).a());
      return hat.j().a(conta.getAgencia(), conta.getCuenta(), RendaFixaAplicacaoActivity.e(this.a).a(), naj.a(naj.l(RendaFixaAplicacaoActivity.k(this.a).getText().toString()), 15));
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftp paramftp) {
    if (paramftp == null || paramftp.hasError()) {
      if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
        RendaFixaAplicacaoActivity.g(this.a).cancel();
        RendaFixaAplicacaoActivity.a(this.a, null);
      } 
      hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), paramftp, true);
      return;
    } 
    if (!paramftp.e()) {
      if (paramftp.a() || this.a.v.f().i().equalsIgnoreCase("PR")) {
        RendaFixaAplicacaoActivity.a(this.a, new fmf(this.a, null));
        RendaFixaAplicacaoActivity.l(this.a).execute((Object[])new Void[0]);
        return;
      } 
      if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
        RendaFixaAplicacaoActivity.g(this.a).cancel();
        RendaFixaAplicacaoActivity.a(this.a, null);
      } 
      if (!paramftp.a() && !paramftp.b()) {
        mxn.a((Activity)RendaFixaAplicacaoActivity.c(this.a), this.a.getResources().getString(2131297206), this.a.getResources().getString(2131298466), false, this.a.getResources().getString(2131296657));
        return;
      } 
      if (paramftp.b()) {
        RendaFixaAplicacaoActivity.a(this.a, paramftp.c());
        return;
      } 
      hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), paramftp, true);
      return;
    } 
    RendaFixaAplicacaoActivity.a(this.a, new fmf(this.a, null));
    RendaFixaAplicacaoActivity.l(this.a).execute((Object[])new Void[0]);
  }
  
  protected void onPreExecute() {
    if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing())
      RendaFixaAplicacaoActivity.g(this.a).cancel(); 
    RendaFixaAplicacaoActivity.a(this.a, mxn.b((Activity)RendaFixaAplicacaoActivity.c(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */