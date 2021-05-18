import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class gho extends AsyncTask<ghr, Void, ggt> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gho(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected ggt a(ghr... paramVarArgs) {
    ghr ghr1 = paramVarArgs[0];
    return (new gog<ghr, ggt>()).a(ghr1, ggt.class, has.X(), "consultarCartaoApp", "return");
  }
  
  protected void a(ggt paramggt) {
    this.c.a(paramggt);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramggt);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */