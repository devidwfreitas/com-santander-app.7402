import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gdy extends AsyncTask<gat, Void, gas> {
  private gkw a;
  
  private Dialog b;
  
  private Activity c;
  
  public gdy(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.c = paramActivity;
  }
  
  protected gas a(gat... paramVarArgs) {
    return (new gog<gat, gas>()).a(paramVarArgs[0], gas.class, has.ah(), "listarMoedas", "return");
  }
  
  protected void a(gas paramgas) {
    super.onPostExecute(paramgas);
    if (this.a != null)
      this.a.a(paramgas); 
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */