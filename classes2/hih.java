import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso2Activity;
import java.io.Serializable;

public class hih extends AsyncTask<Void, Void, hjb> {
  private hjb b;
  
  private hje c;
  
  private hih(SimulacaoAntecipacaoDTPasso1Activity paramSimulacaoAntecipacaoDTPasso1Activity) {}
  
  private hje a() {
    hje hje1 = new hje();
    hje1.setAgencia(mzr.e());
    hje1.setConta(mzr.f());
    hje1.b(SimulacaoAntecipacaoDTPasso1Activity.c(this.a).a());
    hje1.c(SimulacaoAntecipacaoDTPasso1Activity.c(this.a).b());
    hje1.d(SimulacaoAntecipacaoDTPasso1Activity.d(this.a).getText().toString().replace("/", ""));
    hje1.a(SimulacaoAntecipacaoDTPasso1Activity.e(this.a));
    hje1.f(SimulacaoAntecipacaoDTPasso1Activity.j(this.a).a());
    hje1.e(SimulacaoAntecipacaoDTPasso1Activity.m(this.a).getText().toString().replace(".", "").replace(",", "."));
    hje1.setConnUuid(this.a.v.i());
    hje1.setTokenSessao(this.a.v.j());
    hje1.setTokenTransacao(this.a.v.f().m());
    return hje1;
  }
  
  protected hjb a(Void... paramVarArgs) {
    this.c = a();
    this.b = (new gog<hje, hjb>()).a(this.c, hjb.class, has.T(), "simularAntecipacao13", "return");
    return this.b;
  }
  
  protected void a(hjb paramhjb) {
    if (SimulacaoAntecipacaoDTPasso1Activity.i(this.a) != null) {
      SimulacaoAntecipacaoDTPasso1Activity.i(this.a).cancel();
      SimulacaoAntecipacaoDTPasso1Activity.a(this.a, null);
    } 
    if (paramhjb != null)
      if (paramhjb.getConfirmacao().equalsIgnoreCase("ok")) {
        Intent intent = new Intent((Context)SimulacaoAntecipacaoDTPasso1Activity.a(this.a), SimulacaoAntecipacaoDTPasso2Activity.class);
        intent.putExtra("simularAntecipacaoDT", (Serializable)paramhjb);
        intent.putExtra("simularAntecipacaoRequest", (Serializable)this.c);
        this.a.startActivity(intent);
      } else {
        mxn.e(SimulacaoAntecipacaoDTPasso1Activity.a(this.a), paramhjb.getMensagemErro());
      }  
    super.onPostExecute(paramhjb);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    SimulacaoAntecipacaoDTPasso1Activity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hih.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */