import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gdz extends AsyncTask<gbe, Void, gay> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gdz(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected gay a(gbe... paramVarArgs) {
    return (new gog<gbe, gay>()).a(paramVarArgs[0], gay.class, has.ah(), "listarPaises", "return");
  }
  
  protected void a(gay paramgay) {
    this.c.a(paramgay);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramgay);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */