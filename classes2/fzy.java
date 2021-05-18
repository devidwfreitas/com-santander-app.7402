import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;

public class fzy extends AsyncTask<Void, Void, gag> {
  public fzy(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  protected gag a(Void... paramVarArgs) {
    try {
      return hat.x().a();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(gag paramgag) {
    try {
      if (CadastrarDebitoAutomaticoActivity.m(this.a) != null && CadastrarDebitoAutomaticoActivity.m(this.a).isShowing()) {
        CadastrarDebitoAutomaticoActivity.m(this.a).cancel();
        CadastrarDebitoAutomaticoActivity.a(this.a, null);
      } 
      if (paramgag == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramgag == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } 
    CadastrarDebitoAutomaticoActivity.a(this.a, paramgag);
  }
  
  public void onPreExecute() {
    try {
      CadastrarDebitoAutomaticoActivity.a(this.a, mxn.b(this.a.i));
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */