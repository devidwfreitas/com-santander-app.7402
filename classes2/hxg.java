import android.os.AsyncTask;
import android.util.Log;
import com.facebook.GraphRequest;

public class hxg extends AsyncTask<hux, Void, huy> {
  private gkv<huy> a;
  
  public hxg(gkv<huy> paramgkv) {
    this.a = paramgkv;
  }
  
  protected huy a(hux... paramVarArgs) {
    try {
      return (new gog<hux, huy>()).a(paramVarArgs[0], huy.class, has.u(), "obterTermos", "return", true);
    } catch (Exception exception) {
      Log.e(GraphRequest.b, "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(huy paramhuy) {
    super.onPostExecute(paramhuy);
    this.a.a(paramhuy);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */