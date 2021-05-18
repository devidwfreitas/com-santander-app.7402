import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hed extends AsyncTask<Void, Void, hen> {
  public hed(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  protected hen a(Void... paramVarArgs) {
    try {
      return hat.u().b(DPPPreenchimentoActivity.r(this.a));
    } catch (Exception exception) {
      Log.e("DPPoupanca", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(hen paramhen) {
    if (DPPPreenchimentoActivity.t(this.a) != null && DPPPreenchimentoActivity.t(this.a).isShowing()) {
      DPPPreenchimentoActivity.t(this.a).cancel();
      DPPPreenchimentoActivity.a(this.a, null);
    } 
    if (paramhen.a().equals("0")) {
      DPPPreenchimentoActivity.a(this.a, paramhen.d());
      this.a.a(DPPPreenchimentoActivity.e(this.a));
      return;
    } 
    hat.d().a((Activity)DPPPreenchimentoActivity.i(this.a), paramhen, true, false);
  }
  
  public void onPreExecute() {
    if (DPPPreenchimentoActivity.t(this.a) != null && DPPPreenchimentoActivity.t(this.a).isShowing()) {
      DPPPreenchimentoActivity.t(this.a).cancel();
      DPPPreenchimentoActivity.a(this.a, null);
    } 
    DPPPreenchimentoActivity.a(this.a, mxn.b((Activity)DPPPreenchimentoActivity.i(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hed.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */