import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jjp extends AsyncTask<jdn, Void, jdm> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jjp(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jdm a(jdn... paramVarArgs) {
    return (new gog<jdn, jdm>()).a(paramVarArgs[0], jdm.class, has.al(), "consultarMeusFundos", "return");
  }
  
  protected void a(jdm paramjdm) {
    this.c.a(paramjdm);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjdm);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */