import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jjr extends AsyncTask<jdr, Void, jdq> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jjr(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jdq a(jdr... paramVarArgs) {
    return (new gog<jdr, jdq>()).a(paramVarArgs[0], jdq.class, has.al(), "consultarQuestionarioPerfil", "return");
  }
  
  protected void a(jdq paramjdq) {
    this.c.a(paramjdq);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjdq);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */