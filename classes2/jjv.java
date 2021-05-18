import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.util.Log;
import java.io.IOException;

public class jjv extends AsyncTask<String, Void, String> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jjv(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected String a(String... paramVarArgs) {
    mzw mzw = new mzw(paramVarArgs[0]);
    try {
      return mzw.a();
    } catch (IOException iOException) {
      Log.e("Error", iOException.toString());
      return null;
    } 
  }
  
  protected void a(String paramString) {
    this.c.a(paramString);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramString);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */