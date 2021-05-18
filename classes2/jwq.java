import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jwq extends AsyncTask<jss, Void, jsr> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jwq(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jsr a(jss... paramVarArgs) {
    jss jss1 = paramVarArgs[0];
    return (new gog<jss, jsr>()).a(jss1, jsr.class, has.ac(), "consultarTributos", "pagamentoResponse");
  }
  
  protected void a(jsr paramjsr) {
    this.c.a(paramjsr);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjsr);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */