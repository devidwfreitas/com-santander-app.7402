import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mre extends AsyncTask<mlc, Void, mlb> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public mre(gkv paramgkv, Activity paramActivity) {
    this.c = paramgkv;
    this.a = paramActivity;
  }
  
  protected mlb a(mlc... paramVarArgs) {
    mlc mlc1 = paramVarArgs[0];
    return (new gog<mlc, mlb>()).a(mlc1, mlb.class, has.I(), "cancelar", "return");
  }
  
  protected void a(mlb parammlb) {
    super.onPostExecute(parammlb);
    this.c.a(parammlb);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  public void onPreExecute() {
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mre.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */