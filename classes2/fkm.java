import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PoupancaAplicacaoConfirmacaoActivity;

public class fkm extends AsyncTask<Void, Void, fsy> {
  private fkm(PoupancaAplicacaoConfirmacaoActivity paramPoupancaAplicacaoConfirmacaoActivity) {}
  
  protected fsy a(Void... paramVarArgs) {
    try {
      if (PoupancaAplicacaoConfirmacaoActivity.c(this.a) == null) {
        fsy fsy1 = hat.j().a(PoupancaAplicacaoConfirmacaoActivity.d(this.a), PoupancaAplicacaoConfirmacaoActivity.e(this.a), PoupancaAplicacaoConfirmacaoActivity.f(this.a), PoupancaAplicacaoConfirmacaoActivity.g(this.a), PoupancaAplicacaoConfirmacaoActivity.h(this.a));
        PoupancaAplicacaoConfirmacaoActivity.a(this.a).a(Boolean.valueOf(true));
        return fsy1;
      } 
      fsy fsy = hat.j().a(PoupancaAplicacaoConfirmacaoActivity.d(this.a), PoupancaAplicacaoConfirmacaoActivity.c(this.a), PoupancaAplicacaoConfirmacaoActivity.e(this.a), PoupancaAplicacaoConfirmacaoActivity.f(this.a), PoupancaAplicacaoConfirmacaoActivity.g(this.a), PoupancaAplicacaoConfirmacaoActivity.h(this.a));
      PoupancaAplicacaoConfirmacaoActivity.a(this.a).a(Boolean.valueOf(false));
      return fsy;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fsy paramfsy) {
    PoupancaAplicacaoConfirmacaoActivity.b(this.a, this.a.g());
    PoupancaAplicacaoConfirmacaoActivity.a(this.a, this.a.e());
    PoupancaAplicacaoConfirmacaoActivity.c(this.a, paramfsy);
    if (paramfsy == null || paramfsy.hasError() || paramfsy.m() != null) {
      PoupancaAplicacaoConfirmacaoActivity.d(this.a, paramfsy);
      return;
    } 
    PoupancaAplicacaoConfirmacaoActivity.e(this.a, paramfsy);
  }
  
  public void onPreExecute() {
    PoupancaAplicacaoConfirmacaoActivity.a(this.a, PoupancaAplicacaoConfirmacaoActivity.a(this.a).e());
    PoupancaAplicacaoConfirmacaoActivity.a(this.a, PoupancaAplicacaoConfirmacaoActivity.a(this.a).a());
    PoupancaAplicacaoConfirmacaoActivity.a(this.a, PoupancaAplicacaoConfirmacaoActivity.a(this.a).b());
    PoupancaAplicacaoConfirmacaoActivity.b(this.a, PoupancaAplicacaoConfirmacaoActivity.a(this.a).d());
    if (PoupancaAplicacaoConfirmacaoActivity.b(this.a) != null && PoupancaAplicacaoConfirmacaoActivity.b(this.a).isShowing())
      PoupancaAplicacaoConfirmacaoActivity.b(this.a).cancel(); 
    PoupancaAplicacaoConfirmacaoActivity.a(this.a, mxn.b((Activity)PoupancaAplicacaoConfirmacaoActivity.a(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */