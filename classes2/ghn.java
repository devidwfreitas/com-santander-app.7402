import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class ghn extends AsyncTask<ghq, Void, ggs> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public ghn(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected ggs a(ghq... paramVarArgs) {
    ghq ghq1 = paramVarArgs[0];
    return (new gog<ghq, ggs>()).a(ghq1, ggs.class, has.Y(), "bloquear", "return");
  }
  
  protected void a(ggs paramggs) {
    this.c.a(paramggs);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramggs);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ghn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */