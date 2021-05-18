import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gjy extends AsyncTask<gib, Void, gia> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gjy(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected gia a(gib... paramVarArgs) {
    gib gib1 = paramVarArgs[0];
    return (new gog<gib, gia>()).a(gib1, gia.class, has.w(), "consultarParcelamentoFaturaNaoCorrentista", "return", true);
  }
  
  protected void a(gia paramgia) {
    this.c.a(paramgia);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramgia);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */