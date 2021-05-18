import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jjq extends AsyncTask<miv, Void, miw> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public jjq(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected miw a(miv... paramVarArgs) {
    return (new gog<miv, miw>()).a(paramVarArgs[0], miw.class, has.C(), "consultarPerfilInvestidor", "return");
  }
  
  protected void a(miw parammiw) {
    this.a.a(parammiw);
    if (this.c != null) {
      this.c.cancel();
      this.c = null;
    } 
    super.onPostExecute(parammiw);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.c = mxn.b(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */