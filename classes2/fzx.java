import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;
import com.santander.app.contacorrente.domain.Conta;

public class fzx extends AsyncTask<gaf, Void, gad> {
  private fzx(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  protected gad a(gaf... paramVarArgs) {
    try {
      CadastrarDebitoAutomaticoActivity.e(this.a).u(((Conta)CadastrarDebitoAutomaticoActivity.o(this.a).get(CadastrarDebitoAutomaticoActivity.n(this.a))).getCuenta());
      CadastrarDebitoAutomaticoActivity.e(this.a).t(mzr.h());
      CadastrarDebitoAutomaticoActivity.e(this.a).s(((Conta)CadastrarDebitoAutomaticoActivity.o(this.a).get(CadastrarDebitoAutomaticoActivity.n(this.a))).getAgencia());
      CadastrarDebitoAutomaticoActivity.e(this.a).p(paramVarArgs[0].b());
      CadastrarDebitoAutomaticoActivity.e(this.a).r(paramVarArgs[0].c());
      return hat.x().b(CadastrarDebitoAutomaticoActivity.e(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(gad paramgad) {
    try {
      if (CadastrarDebitoAutomaticoActivity.m(this.a) != null && CadastrarDebitoAutomaticoActivity.m(this.a).isShowing()) {
        CadastrarDebitoAutomaticoActivity.m(this.a).cancel();
        CadastrarDebitoAutomaticoActivity.a(this.a, null);
      } 
      if (paramgad == null) {
        hat.d().a(this.a.i, new fvu(), true, true);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramgad == null) {
        hat.d().a(this.a.i, new fvu(), true, true);
        return;
      } 
    } 
    this.a.v.f().i(paramgad.e());
    CadastrarDebitoAutomaticoActivity.a(this.a, paramgad);
  }
  
  protected void onPreExecute() {
    CadastrarDebitoAutomaticoActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */