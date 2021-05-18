import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gjw extends AsyncTask<ghx, Void, ghw> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gjw(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected ghw a(ghx... paramVarArgs) {
    ghx ghx1 = paramVarArgs[0];
    return (new gog<ghx, ghw>()).a(ghx1, ghw.class, has.w(), "calcularFaturaComValorEntrada", "return");
  }
  
  protected void a(ghw paramghw) {
    this.c.a(paramghw);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramghw);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */