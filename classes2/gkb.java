import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gkb extends AsyncTask<gih, Void, gig> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gkb(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected gig a(gih... paramVarArgs) {
    gih gih1 = paramVarArgs[0];
    return (new gog<gih, gig>()).a(gih1, gig.class, has.w(), "faturaParcelar", "cartaoFaturaPagamentoResponse");
  }
  
  protected void a(gig paramgig) {
    this.c.a(paramgig);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramgig);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gkb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */