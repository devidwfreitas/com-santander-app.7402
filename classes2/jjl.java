import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jjl extends AsyncTask<jdj, Void, jdi> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jjl(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jdi a(jdj... paramVarArgs) {
    return (new gog<jdj, jdi>()).a(paramVarArgs[0], jdi.class, has.al(), "aplicarFundos", "return");
  }
  
  protected void a(jdi paramjdi) {
    this.c.a(paramjdi);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjdi);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */