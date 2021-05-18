import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartaoConfirmacaoActivity;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartoesActivity;
import java.io.Serializable;

public class hcl extends AsyncTask<Void, Void, hcs> {
  private hcl(DesbloqueioCartaoConfirmacaoActivity paramDesbloqueioCartaoConfirmacaoActivity) {}
  
  protected hcs a(Void... paramVarArgs) {
    try {
      DesbloqueioCartaoConfirmacaoActivity.a(this.a, (hct)this.a.getIntent().getSerializableExtra("cartaoDesloqueioModel"));
      return hat.w().a(DesbloqueioCartaoConfirmacaoActivity.b(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(hcs paramhcs) {
    hcm hcm;
    if (paramhcs == null || paramhcs.hasError()) {
      DesbloqueioCartaoConfirmacaoActivity.c(this.a);
      hat.d().a((Activity)DesbloqueioCartaoConfirmacaoActivity.a(this.a), paramhcs, true);
      return;
    } 
    if (paramhcs.c().equalsIgnoreCase("ok")) {
      mzp mzp1 = mzp.RELOAD_CARTOES;
      mzp mzp2 = mzp.RELOAD_CARTOES_DESBLOQUEIO;
      mzn mzn = new mzn();
      hcm = new hcm(this, paramhcs);
      mzn.a(new mzp[] { mzp1, mzp2 }, hcm);
      return;
    } 
    DesbloqueioCartaoConfirmacaoActivity.c(this.a);
    Intent intent = new Intent((Context)DesbloqueioCartaoConfirmacaoActivity.a(this.a), DesbloqueioCartoesActivity.class);
    intent.putExtra("cartaoDesloqueioModel", (Serializable)hcm);
    this.a.startActivity(intent);
  }
  
  public void onPreExecute() {
    DesbloqueioCartaoConfirmacaoActivity.a(this.a, mxn.b((Activity)DesbloqueioCartaoConfirmacaoActivity.a(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */