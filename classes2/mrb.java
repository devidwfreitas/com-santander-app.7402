import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mrb extends AsyncTask<mlq, Void, mlp> {
  private Activity a;
  
  private gkv b;
  
  private Dialog c;
  
  public mrb(gkv paramgkv, Activity paramActivity) {
    this.a = paramActivity;
    this.b = paramgkv;
  }
  
  protected mlp a(mlq... paramVarArgs) {
    mlq mlq1 = paramVarArgs[0];
    return (new gog<mlq, mlp>()).a(mlq1, mlp.class, has.af(), "confirmarTransferencia", "return");
  }
  
  protected void a(mlp parammlp) {
    super.onPostExecute(parammlp);
    this.b.a(parammlp);
    if (this.c != null) {
      this.c.cancel();
      this.c = null;
    } 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    if (this.a != null)
      this.c = mxn.b(this.a); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mrb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */