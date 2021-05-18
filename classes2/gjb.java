import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaCorrentistaValidacaoActivity;

public class gjb extends AsyncTask<Void, Void, ful> {
  private gjb(ParcelamentoFaturaCorrentistaValidacaoActivity paramParcelamentoFaturaCorrentistaValidacaoActivity) {}
  
  protected ful a(Void... paramVarArgs) {
    try {
      ((gif)ParcelamentoFaturaCorrentistaValidacaoActivity.b(this.a).k().get(0)).b("true");
      return hat.i().a(ParcelamentoFaturaCorrentistaValidacaoActivity.c(this.a), ParcelamentoFaturaCorrentistaValidacaoActivity.b(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ful paramful) {
    mzp mzp;
    if (paramful == null) {
      ParcelamentoFaturaCorrentistaValidacaoActivity.d(this.a);
      this.a.a("");
      return;
    } 
    if (paramful.hasError()) {
      ParcelamentoFaturaCorrentistaValidacaoActivity.d(this.a);
      this.a.a(paramful.t());
      hat.d().a(ParcelamentoFaturaCorrentistaValidacaoActivity.a(this.a), paramful, false);
      return;
    } 
    if (paramful.e() == null || paramful.e().equals("0")) {
      mzp = mzp.RELOAD_CONTA;
      mzp mzp1 = mzp.RELOAD_CARTOES;
      mzp mzp2 = mzp.RELOAD_CARTOES_DESBLOQUEIO;
      mzn mzn = new mzn();
      gjc gjc = new gjc(this);
      mzn.a(new mzp[] { mzp, mzp1, mzp2 }, gjc);
      return;
    } 
    ParcelamentoFaturaCorrentistaValidacaoActivity.d(this.a);
    this.a.a(mzp.t());
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(ParcelamentoFaturaCorrentistaValidacaoActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */