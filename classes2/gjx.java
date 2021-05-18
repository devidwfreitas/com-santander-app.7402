import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gjx extends AsyncTask<ghy, Void, ghv> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gjx(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected ghv a(ghy... paramVarArgs) {
    ghy ghy1 = paramVarArgs[0];
    return (new gog<ghy, ghv>()).a(ghy1, ghv.class, has.w(), "faturaParcelarCalcular", "cartaoFaturaPagamentoResponse");
  }
  
  protected void a(ghv paramghv) {
    this.c.a(paramghv);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramghv);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */