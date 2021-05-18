import android.os.AsyncTask;
import android.util.Log;

public class hhk extends AsyncTask<hfk, Void, hfl> {
  private static final String a = "ConfirmarTask";
  
  private gkv<hfl> b;
  
  public hhk(gkv<hfl> paramgkv) {
    this.b = paramgkv;
  }
  
  protected hfl a(hfk... paramVarArgs) {
    try {
      return (new gog<hfk, hfl>()).a(paramVarArgs[0], hfl.class, has.t(), "confirmar", "return", true);
    } catch (Exception exception) {
      Log.e("ConfirmarTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(hfl paramhfl) {
    super.onPostExecute(paramhfl);
    if (this.b != null)
      this.b.a(paramhfl); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hhk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */