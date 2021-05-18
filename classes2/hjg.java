import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.emprestimo.antecipacaoIR.activity.AntecipacaoIRConfirmacaoActivity;
import java.util.ArrayList;

public class hjg extends AsyncTask<hkp, Void, hkj> {
  private hkj b;
  
  private hjg(AntecipacaoIRConfirmacaoActivity paramAntecipacaoIRConfirmacaoActivity) {}
  
  protected hkj a(hkp... paramVarArgs) {
    paramVarArgs[0].setTokenTransacao(this.a.v.f().m());
    this.b = (new gog<hkp, hkj>()).a(paramVarArgs[0], hkj.class, has.U(), "efetuarAntecipacaoIR", "return");
    return this.b;
  }
  
  protected void a(hkj paramhkj) {
    hjh hjh;
    super.onPostExecute(paramhkj);
    gvb gvb = new gvb();
    ArrayList arrayList = (ArrayList)this.a.getIntent().getExtras().getSerializable("listaCustoCET");
    gvb.i("abrirComprovanteAnteIR");
    gvb.j("shareComprovanteAnteIR");
    if (paramhkj != null && paramhkj.getConfirmacao().equalsIgnoreCase("ok")) {
      hyb.j().h();
      mzp mzp1 = mzp.RELOAD_CONTA;
      mzp mzp2 = mzp.RELOAD_EMPRESTIMOS;
      mzn mzn = new mzn();
      hjh = new hjh(this, gvb, paramhkj, arrayList);
      mzn.a(new mzp[] { mzp1, mzp2 }, hjh);
      return;
    } 
    if (hjh.getConfirmacao().equalsIgnoreCase("erro")) {
      AntecipacaoIRConfirmacaoActivity.a(this.a, gvb, (hkj)hjh, arrayList, true);
      Intent intent = new Intent((Context)this.a, ComprovanteBaseActivity.class);
      intent.putExtra("comprovanteBase", gvb);
      this.a.startActivity(intent);
      return;
    } 
    hat.d().a(this.a.i, null, false, false);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    AntecipacaoIRConfirmacaoActivity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */