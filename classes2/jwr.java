import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jwr extends AsyncTask<jsv, Void, jsu> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jwr(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jsu a(jsv... paramVarArgs) {
    jsv jsv1 = paramVarArgs[0];
    return (new gog<jsv, jsu>()).a(jsv1, jsu.class, has.ac(), "efetuarPagamentoTributos", "pagamentoResponse");
  }
  
  protected void a(jsu paramjsu) {
    this.c.a(paramjsu);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjsu);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */