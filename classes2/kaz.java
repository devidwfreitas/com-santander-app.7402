import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.perfil.activity.GerenciarDispositivosConfirmacaoActivity;

public class kaz extends AsyncTask<kbv, Void, kbo> {
  private kbo b;
  
  private kaz(GerenciarDispositivosConfirmacaoActivity paramGerenciarDispositivosConfirmacaoActivity) {}
  
  protected kbo a(kbv... paramVarArgs) {
    kbv kbv1 = new kbv();
    kbv1.setConnUuid(this.a.v.i());
    kbv1.setTokenTransacao(this.a.v.f().m());
    kbv1.setTokenSessao(this.a.v.j());
    kbv1.c(GerenciarDispositivosConfirmacaoActivity.a(this.a).b());
    kbv1.a(GerenciarDispositivosConfirmacaoActivity.a(this.a).c());
    kbv1.b(GerenciarDispositivosConfirmacaoActivity.a(this.a).g());
    this.b = (new gog<kbv, kbo>()).a(kbv1, kbo.class, has.a(), GerenciarDispositivosConfirmacaoActivity.b(this.a), "return");
    return this.b;
  }
  
  protected void a(kbo paramkbo) {
    super.onPostExecute(paramkbo);
    if (GerenciarDispositivosConfirmacaoActivity.c(this.a) != null && GerenciarDispositivosConfirmacaoActivity.c(this.a).isShowing()) {
      GerenciarDispositivosConfirmacaoActivity.c(this.a).cancel();
      GerenciarDispositivosConfirmacaoActivity.a(this.a, null);
    } 
    if (paramkbo == null) {
      hat.d().a(this.a.i, null, true, true);
      return;
    } 
    if (paramkbo.getConfirmacao() != null && paramkbo.getConfirmacao().equalsIgnoreCase("ERRO")) {
      hat.d().a(this.a.i, paramkbo.getMensagemErro());
      return;
    } 
    if (paramkbo.getConfirmacao().equalsIgnoreCase("OK")) {
      GerenciarDispositivosConfirmacaoActivity.a(this.a, paramkbo);
      gvb gvb = new gvb();
      gvb.i(GerenciarDispositivosConfirmacaoActivity.d(this.a));
      gvb.j("shareComprovanteGerenDispositivo");
      gvb.b(GerenciarDispositivosConfirmacaoActivity.e(this.a));
      gvb.g(this.a.getString(2131297520) + " " + paramkbo.a().c());
      gvb.e(paramkbo.a().b());
      gvb.f(paramkbo.a().c());
      gvb.d(false);
      gvb.h("");
      gvb.c(this.a.getString(2131298990));
      gvb.d(GerenciarDispositivosConfirmacaoActivity.f(this.a));
      Intent intent = new Intent((Context)this.a, ComprovanteBaseActivity.class);
      intent.putExtra("comprovanteBase", gvb);
      this.a.startActivity(intent);
      return;
    } 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    GerenciarDispositivosConfirmacaoActivity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kaz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */