import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mrf extends AsyncTask<mll, Void, mlk> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public mrf(gkv paramgkv, Activity paramActivity) {
    this.c = paramgkv;
    this.a = paramActivity;
  }
  
  protected mlk a(mll... paramVarArgs) {
    mll mll1 = paramVarArgs[0];
    return (new gog<mll, mlk>()).a(mll1, mlk.class, has.I(), "listar", "return");
  }
  
  protected void a(mlk parammlk) {
    super.onPostExecute(parammlk);
    this.c.a(parammlk);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  public void onPreExecute() {
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mrf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */