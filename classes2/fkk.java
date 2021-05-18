import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.ca.android.app.CaMDOProgressBar;
import com.santander.app.PoupancaAplicacaoActivity;
import com.santander.app.widget.Carrossel;

public class fkk extends AsyncTask<Void, Void, ftc> {
  private fkk(PoupancaAplicacaoActivity paramPoupancaAplicacaoActivity) {}
  
  protected ftc a(Void... paramVarArgs) {
    try {
      return hat.e().e();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftc paramftc) {
    if (PoupancaAplicacaoActivity.j(this.a) != null && PoupancaAplicacaoActivity.j(this.a).isShowing()) {
      PoupancaAplicacaoActivity.j(this.a).cancel();
      PoupancaAplicacaoActivity.a(this.a, null);
    } 
    if (paramftc == null) {
      hat.d().a((Activity)PoupancaAplicacaoActivity.h(this.a), paramftc, true, false);
      return;
    } 
    if (paramftc.hasError()) {
      PoupancaAplicacaoActivity.a(this.a, new ftc());
      hat.d().a((Activity)PoupancaAplicacaoActivity.h(this.a), paramftc, false, false);
      return;
    } 
    PoupancaAplicacaoActivity.a(this.a, paramftc);
    if (PoupancaAplicacaoActivity.n(this.a) != null && PoupancaAplicacaoActivity.n(this.a).a().size() > 0) {
      PoupancaAplicacaoActivity.o(this.a);
      CaMDOProgressBar.setVisibility(PoupancaAplicacaoActivity.m(this.a), 8);
      return;
    } 
  }
  
  public void onPreExecute() {
    PoupancaAplicacaoActivity.a(this.a, (Carrossel)this.a.findViewById(2131757076));
    PoupancaAplicacaoActivity.l(this.a).setVisibility(8);
    CaMDOProgressBar.setVisibility(PoupancaAplicacaoActivity.m(this.a), 0);
    PoupancaAplicacaoActivity.a(this.a, mxn.b((Activity)PoupancaAplicacaoActivity.h(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */