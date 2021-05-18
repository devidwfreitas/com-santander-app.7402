import android.app.Activity;
import android.os.AsyncTask;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;
import java.text.NumberFormat;
import java.util.Locale;

public class hjp extends AsyncTask<hkk, Void, hkh> {
  private hjp(SimulacaoAntecipacaoIRPasso1Activity paramSimulacaoAntecipacaoIRPasso1Activity) {}
  
  private hkn a(hkk paramhkk) {
    hkn hkn = new hkn();
    hkn.setAgencia(mzr.e());
    hkn.setConta(mzr.f());
    hkn.a(paramhkk.a());
    hkn.b(paramhkk.b());
    hkn.c(SimulacaoAntecipacaoIRPasso1Activity.c(this.a).getText().toString().replace(".", "").replace(",", "."));
    hkn.setConnUuid(this.a.v.i());
    hkn.setTokenSessao(this.a.v.j());
    hkn.setTokenTransacao(this.a.v.f().m());
    return hkn;
  }
  
  private void a() {
    String str1 = NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(new Double(SimulacaoAntecipacaoIRPasso1Activity.h(this.a).a()));
    String str2 = NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(new Double(SimulacaoAntecipacaoIRPasso1Activity.h(this.a).b()));
    SimulacaoAntecipacaoIRPasso1Activity.j(this.a).setText(str1);
    SimulacaoAntecipacaoIRPasso1Activity.k(this.a).setText(str2);
    SimulacaoAntecipacaoIRPasso1Activity.i(this.a).setText(SimulacaoAntecipacaoIRPasso1Activity.h(this.a).a());
    SimulacaoAntecipacaoIRPasso1Activity.b(this.a).setEnabled(true);
  }
  
  protected hkh a(hkk... paramVarArgs) {
    hkn hkn = a(paramVarArgs[0]);
    gog<Object, Object> gog = new gog<Object, Object>();
    SimulacaoAntecipacaoIRPasso1Activity.a(this.a, (hkh)gog.a(hkn, hkh.class, has.U(), "consultarLimitesAntecipacaoIR", "return"));
    return SimulacaoAntecipacaoIRPasso1Activity.h(this.a);
  }
  
  protected void a(hkh paramhkh) {
    if (SimulacaoAntecipacaoIRPasso1Activity.g(this.a) != null) {
      SimulacaoAntecipacaoIRPasso1Activity.g(this.a).cancel();
      SimulacaoAntecipacaoIRPasso1Activity.a(this.a, null);
    } 
    if (paramhkh != null)
      if (paramhkh.getConfirmacao().equalsIgnoreCase("ok")) {
        a();
        SimulacaoAntecipacaoIRPasso1Activity.a(this.a).setVisibility(0);
        SimulacaoAntecipacaoIRPasso1Activity.i(this.a).requestFocus();
      } else {
        mxn.e(SimulacaoAntecipacaoIRPasso1Activity.d(this.a), paramhkh.getMensagemErro());
      }  
    super.onPostExecute(paramhkh);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    if (SimulacaoAntecipacaoIRPasso1Activity.g(this.a) == null)
      SimulacaoAntecipacaoIRPasso1Activity.a(this.a, mxn.b((Activity)this.a)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */