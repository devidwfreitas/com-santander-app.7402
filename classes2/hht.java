import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.emprestimo.antecipacaoDT.activity.AntecipacaoDTConfirmacaoActivity;
import java.util.ArrayList;

public class hht extends AsyncTask<hje, Void, hiy> {
  private hiy b;
  
  private hht(AntecipacaoDTConfirmacaoActivity paramAntecipacaoDTConfirmacaoActivity) {}
  
  protected hiy a(hje... paramVarArgs) {
    paramVarArgs[0].setTokenTransacao(this.a.v.f().m());
    this.b = (new gog<hje, hiy>()).a(paramVarArgs[0], hiy.class, has.T(), "efetuarAntecipacao13", "return");
    return this.b;
  }
  
  protected void a(hiy paramhiy) {
    hhu hhu;
    super.onPostExecute(paramhiy);
    gvb gvb = new gvb();
    ArrayList arrayList = (ArrayList)this.a.getIntent().getExtras().getSerializable("listaCustoCET");
    gvb.i("abrirComprovanteAnte13Salario");
    gvb.j("shareComprovanteAnte13Salario");
    if (paramhiy != null && paramhiy.getConfirmacao().equalsIgnoreCase("ok")) {
      hyb.j().h();
      mzp mzp1 = mzp.RELOAD_CONTA;
      mzp mzp2 = mzp.RELOAD_EMPRESTIMOS;
      mzn mzn = new mzn();
      hhu = new hhu(this, gvb, paramhiy, arrayList);
      mzn.a(new mzp[] { mzp1, mzp2 }, hhu);
      return;
    } 
    if (hhu.getConfirmacao().equalsIgnoreCase("erro")) {
      AntecipacaoDTConfirmacaoActivity.a(this.a, gvb, (hiy)hhu, arrayList, true);
      Intent intent = new Intent((Context)this.a, ComprovanteBaseActivity.class);
      intent.putExtra("comprovanteBase", gvb);
      this.a.startActivity(intent);
      return;
    } 
    hat.d().a(this.a.i, null, false, false);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    AntecipacaoDTConfirmacaoActivity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hht.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */