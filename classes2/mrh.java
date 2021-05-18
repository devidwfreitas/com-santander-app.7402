import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mrh extends AsyncTask<mlq, Void, mlp> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public mrh(gkv paramgkv, Activity paramActivity) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected mlp a(mlq... paramVarArgs) {
    mlq mlq1 = paramVarArgs[0];
    return (new gog<mlq, mlp>()).a(mlq1, mlp.class, has.af(), "transferencia", "return");
  }
  
  protected void a(mlp parammlp) {
    super.onPostExecute(parammlp);
    this.c.a(parammlp);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    if (this.a != null)
      this.b = mxn.b(this.a); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mrh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */