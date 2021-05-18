import android.app.Activity;
import android.os.AsyncTask;
import android.widget.Button;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;
import java.text.NumberFormat;
import java.util.Locale;

public class hig extends AsyncTask<hiz, Void, hiw> {
  private String b;
  
  private String c;
  
  public hig(SimulacaoAntecipacaoDTPasso1Activity paramSimulacaoAntecipacaoDTPasso1Activity, String paramString1, String paramString2) {
    this.b = paramString1;
    this.c = paramString2;
  }
  
  private hjc a(hiz paramhiz) {
    hjc hjc = new hjc();
    hjc.setAgencia(mzr.e());
    hjc.setConta(mzr.f());
    hjc.b(paramhiz.a());
    hjc.c(paramhiz.b());
    if (this.c != null) {
      str = this.c;
      hjc.d(str);
      hjc.a(this.b);
      hjc.setConnUuid(this.a.v.i());
      hjc.setTokenSessao(this.a.v.j());
      hjc.setTokenTransacao(this.a.v.f().m());
      return hjc;
    } 
    String str = str.c().replace("/", "");
    hjc.d(str);
    hjc.a(this.b);
    hjc.setConnUuid(this.a.v.i());
    hjc.setTokenSessao(this.a.v.j());
    hjc.setTokenTransacao(this.a.v.f().m());
    return hjc;
  }
  
  private void a() {
    String str1 = NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(new Double(SimulacaoAntecipacaoDTPasso1Activity.j(this.a).a()));
    String str2 = NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(new Double(SimulacaoAntecipacaoDTPasso1Activity.j(this.a).b()));
    SimulacaoAntecipacaoDTPasso1Activity.k(this.a).setText(str1);
    SimulacaoAntecipacaoDTPasso1Activity.l(this.a).setText(str2);
    SimulacaoAntecipacaoDTPasso1Activity.m(this.a).setText(SimulacaoAntecipacaoDTPasso1Activity.j(this.a).a());
    ((Button)this.a.findViewById(2131757180)).setEnabled(true);
  }
  
  protected hiw a(hiz... paramVarArgs) {
    hjc hjc = a(paramVarArgs[0]);
    gog<Object, Object> gog = new gog<Object, Object>();
    SimulacaoAntecipacaoDTPasso1Activity.a(this.a, (hiw)gog.a(hjc, hiw.class, has.T(), "consultarLimitesAntecipacao13", "return"));
    return SimulacaoAntecipacaoDTPasso1Activity.j(this.a);
  }
  
  protected void a(hiw paramhiw) {
    super.onPostExecute(paramhiw);
    if (SimulacaoAntecipacaoDTPasso1Activity.i(this.a) != null) {
      SimulacaoAntecipacaoDTPasso1Activity.i(this.a).dismiss();
      SimulacaoAntecipacaoDTPasso1Activity.a(this.a, null);
    } 
    if (paramhiw != null) {
      if (paramhiw.getConfirmacao().equalsIgnoreCase("ok")) {
        a();
        return;
      } 
    } else {
      return;
    } 
    mxn.e(SimulacaoAntecipacaoDTPasso1Activity.a(this.a), paramhiw.getMensagemErro());
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    SimulacaoAntecipacaoDTPasso1Activity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */