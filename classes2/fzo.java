import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.cadastrodebitoautomatico.activity.CSODebitoAutomaticoActivity;
import com.santander.app.cadastrodebitoautomatico.activity.ComprovanteDebitoAutomaticoActivity;

public class fzo extends AsyncTask<Void, Void, gac> {
  public fzo(CSODebitoAutomaticoActivity paramCSODebitoAutomaticoActivity) {}
  
  protected gac a(Void... paramVarArgs) {
    try {
      return hat.x().a(CSODebitoAutomaticoActivity.a(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(gac paramgac) {
    Intent intent;
    try {
      if (CSODebitoAutomaticoActivity.b(this.a) != null && CSODebitoAutomaticoActivity.b(this.a).isShowing()) {
        CSODebitoAutomaticoActivity.b(this.a).cancel();
        CSODebitoAutomaticoActivity.a(this.a, null);
      } 
      if (paramgac == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramgac == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } 
    if (paramgac.d().equalsIgnoreCase("OK")) {
      CSODebitoAutomaticoActivity.a(this.a).h(paramgac.i());
      CSODebitoAutomaticoActivity.a(this.a).c(paramgac.d());
      CSODebitoAutomaticoActivity.c(this.a);
      intent = new Intent((Context)this.a, ComprovanteDebitoAutomaticoActivity.class);
      intent.putExtra("EXTRADADOS", CSODebitoAutomaticoActivity.a(this.a));
      this.a.startActivity(intent);
      return;
    } 
    if (intent.d().equalsIgnoreCase("ERRO")) {
      intent = new Intent((Context)this.a, ComprovanteDebitoAutomaticoActivity.class);
      CSODebitoAutomaticoActivity.a(this.a).a(true);
      intent.putExtra("EXTRADADOS", CSODebitoAutomaticoActivity.a(this.a));
      this.a.startActivity(intent);
      return;
    } 
    hat.d().a(this.a.i, new fvu(), false, false);
  }
  
  public void onPreExecute() {
    try {
      CSODebitoAutomaticoActivity.a(this.a, mxn.b(this.a.i));
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */