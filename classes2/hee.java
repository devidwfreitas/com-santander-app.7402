import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hee extends AsyncTask<Void, Void, ftc> {
  private hee(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  protected ftc a(Void... paramVarArgs) {
    try {
      return hat.e().e();
    } catch (Exception exception) {
      Log.e("DPPoupanca", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftc paramftc) {
    if (DPPPreenchimentoActivity.t(this.a) != null && DPPPreenchimentoActivity.t(this.a).isShowing()) {
      DPPPreenchimentoActivity.t(this.a).cancel();
      DPPPreenchimentoActivity.a(this.a, null);
    } 
    if (paramftc == null) {
      hat.d().a((Activity)DPPPreenchimentoActivity.i(this.a), paramftc, true, false);
      return;
    } 
    if (paramftc.hasError()) {
      DPPPreenchimentoActivity.a(this.a, new ftc());
      hat.d().a((Activity)DPPPreenchimentoActivity.i(this.a), paramftc, false, false);
      return;
    } 
    DPPPreenchimentoActivity.a(this.a, paramftc);
    if (DPPPreenchimentoActivity.c(this.a) == 1)
      for (int i = 0; i < DPPPreenchimentoActivity.d(this.a).a().size(); i++) {
        if (!DPPPreenchimentoActivity.n(this.a).g().equals(((ftb)DPPPreenchimentoActivity.d(this.a).a().get(i)).k()))
          DPPPreenchimentoActivity.d(this.a).a().remove(i); 
      }  
    if (this.a.d.getVisibility() == 0) {
      if (DPPPreenchimentoActivity.d(this.a).c().isEmpty()) {
        DPPPreenchimentoActivity.b(this.a, true);
        return;
      } 
      return;
    } 
    if (DPPPreenchimentoActivity.c(this.a) == 0)
      DPPPreenchimentoActivity.a(this.a, DPPPreenchimentoActivity.d(this.a).c(), true); 
    if (DPPPreenchimentoActivity.d(this.a).c().isEmpty()) {
      DPPPreenchimentoActivity.b(this.a, true);
      return;
    } 
  }
  
  public void onPreExecute() {
    if (DPPPreenchimentoActivity.t(this.a) != null && DPPPreenchimentoActivity.t(this.a).isShowing()) {
      DPPPreenchimentoActivity.t(this.a).cancel();
      DPPPreenchimentoActivity.a(this.a, null);
    } 
    DPPPreenchimentoActivity.a(this.a, mxn.b((Activity)DPPPreenchimentoActivity.i(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */