import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mrc extends AsyncTask<mky, Void, mkx> {
  private Activity a;
  
  private gkv b;
  
  private Dialog c;
  
  private mky d;
  
  public mrc(gkv paramgkv, Activity paramActivity) {
    this.a = paramActivity;
    this.b = paramgkv;
  }
  
  protected mkx a(mky... paramVarArgs) {
    mky mky1 = paramVarArgs[0];
    return (new gog<mky, mkx>()).a(mky1, mkx.class, has.j(), "consultarLimite", "return");
  }
  
  protected void a(mkx parammkx) {
    super.onPostExecute(parammkx);
    this.b.a(parammkx);
    if (this.c != null) {
      this.c.cancel();
      this.c = null;
    } 
    super.onPostExecute(parammkx);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.c = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mrc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */