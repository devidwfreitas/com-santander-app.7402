import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jjo extends AsyncTask<jdp, Void, jdo> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jjo(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jdo a(jdp... paramVarArgs) {
    return (new gog<jdp, jdo>()).a(paramVarArgs[0], jdo.class, has.al(), "consultarLegendas", "return");
  }
  
  protected void a(jdo paramjdo) {
    this.c.a(paramjdo);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjdo);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */