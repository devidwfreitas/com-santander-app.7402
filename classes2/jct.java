import android.app.Dialog;
import android.os.AsyncTask;

public class jct extends AsyncTask<jcv, Void, jcg> {
  public Dialog a;
  
  private gkv b;
  
  private jcv c;
  
  public jct(gkv paramgkv, jcv paramjcv) {
    this.b = paramgkv;
    this.c = paramjcv;
  }
  
  protected jcg a(jcv... paramVarArgs) {
    return (new gog<jcv, jcg>()).a(this.c, jcg.class, has.V(), "authenticate", "return");
  }
  
  protected void a(jcg paramjcg) {
    super.onPostExecute(paramjcg);
    this.b.a(paramjcg);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */