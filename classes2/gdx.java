import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gdx extends AsyncTask<gau, Void, gaw> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gdx(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected gaw a(gau... paramVarArgs) {
    return (new gog<gau, gaw>()).a(paramVarArgs[0], gaw.class, has.ah(), "validarElegibilidade", "return");
  }
  
  protected void a(gaw paramgaw) {
    this.c.a(paramgaw);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramgaw);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */