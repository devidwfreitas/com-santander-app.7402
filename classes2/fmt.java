import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.ca.android.app.CaMDOProgressBar;
import com.santander.app.RendaFixaResgateActivity;

public class fmt extends AsyncTask<Void, Void, fwb> {
  private boolean b = true;
  
  private fmt(RendaFixaResgateActivity paramRendaFixaResgateActivity) {}
  
  protected fwb a(Void... paramVarArgs) {
    try {
      return hat.e().d();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fwb paramfwb) {
    this.b = false;
    if (paramfwb != null && !paramfwb.hasError()) {
      hau.a().a(paramfwb);
      RendaFixaResgateActivity.a(this.a, hau.a().j());
      RendaFixaResgateActivity.x(this.a);
      CaMDOProgressBar.setVisibility(RendaFixaResgateActivity.w(this.a), 8);
      return;
    } 
    hat.d().a((Activity)RendaFixaResgateActivity.h(this.a), paramfwb, true, false);
  }
  
  public void onPreExecute() {
    if (this.b)
      CaMDOProgressBar.setVisibility(RendaFixaResgateActivity.w(this.a), 0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */