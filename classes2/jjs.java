import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jjs extends AsyncTask<jdt, Void, jds> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jjs(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jds a(jdt... paramVarArgs) {
    return (new gog<jdt, jds>()).a(paramVarArgs[0], jds.class, has.al(), "buscarTermoAdesaoFundo ", "return");
  }
  
  protected void a(jds paramjds) {
    this.c.a(paramjds);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjds);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */