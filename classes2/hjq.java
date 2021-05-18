import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso2Activity;
import java.io.Serializable;

public class hjq extends AsyncTask<Void, Void, hkm> {
  private hkm b;
  
  private hkp c;
  
  private hjq(SimulacaoAntecipacaoIRPasso1Activity paramSimulacaoAntecipacaoIRPasso1Activity) {}
  
  private hkp a() {
    hkp hkp1 = new hkp();
    hkp1.setAgencia(mzr.e());
    hkp1.setConta(mzr.f());
    hkp1.a(SimulacaoAntecipacaoIRPasso1Activity.l(this.a).a());
    hkp1.b(SimulacaoAntecipacaoIRPasso1Activity.l(this.a).b());
    hkp1.c(SimulacaoAntecipacaoIRPasso1Activity.c(this.a).getText().toString().replace(".", "").replace(",", "."));
    hkp1.d(SimulacaoAntecipacaoIRPasso1Activity.i(this.a).getText().toString().replace(".", "").replace(",", "."));
    hkp1.setConnUuid(this.a.v.i());
    hkp1.setTokenSessao(this.a.v.j());
    hkp1.setTokenTransacao(this.a.v.f().m());
    return hkp1;
  }
  
  protected hkm a(Void... paramVarArgs) {
    this.c = a();
    this.b = (new gog<hkp, hkm>()).a(this.c, hkm.class, has.U(), "simularAntecipacaoIR", "return");
    return this.b;
  }
  
  protected void a(hkm paramhkm) {
    if (SimulacaoAntecipacaoIRPasso1Activity.g(this.a) != null) {
      SimulacaoAntecipacaoIRPasso1Activity.g(this.a).cancel();
      SimulacaoAntecipacaoIRPasso1Activity.a(this.a, null);
    } 
    if (paramhkm != null && paramhkm.getConfirmacao().equalsIgnoreCase("ok")) {
      Intent intent = new Intent((Context)SimulacaoAntecipacaoIRPasso1Activity.d(this.a), SimulacaoAntecipacaoIRPasso2Activity.class);
      intent.putExtra("simularAntecipacaoIR", (Serializable)paramhkm);
      intent.putExtra("simularAntecipacaoIRRequest", (Serializable)this.c);
      this.a.startActivity(intent);
    } else {
      mxn.e(SimulacaoAntecipacaoIRPasso1Activity.d(this.a), paramhkm.getMensagemErro());
    } 
    super.onPostExecute(paramhkm);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    SimulacaoAntecipacaoIRPasso1Activity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */