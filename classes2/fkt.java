import android.os.AsyncTask;
import android.util.Log;
import com.ca.android.app.CaMDOProgressBar;
import com.santander.app.PoupancaResgateActivity;

public class fkt extends AsyncTask<Void, Void, ftc> {
  private boolean b = true;
  
  private fkt(PoupancaResgateActivity paramPoupancaResgateActivity) {}
  
  protected ftc a(Void... paramVarArgs) {
    try {
      return hat.e().e();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftc paramftc) {
    this.b = false;
    if (paramftc == null) {
      hat.d().a(PoupancaResgateActivity.l(this.a), paramftc, true, false);
      return;
    } 
    if (paramftc.hasError()) {
      hat.d().a(PoupancaResgateActivity.l(this.a), paramftc, false, false);
      return;
    } 
    PoupancaResgateActivity.a(this.a, paramftc);
    PoupancaResgateActivity.q(this.a);
    CaMDOProgressBar.setVisibility(PoupancaResgateActivity.p(this.a), 8);
  }
  
  public void onPreExecute() {
    if (this.b)
      CaMDOProgressBar.setVisibility(PoupancaResgateActivity.p(this.a), 0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */