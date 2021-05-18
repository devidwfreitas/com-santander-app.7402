import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mrd extends AsyncTask<mla, Void, mkz> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public mrd(gkv paramgkv, Activity paramActivity) {
    this.c = paramgkv;
    this.a = paramActivity;
  }
  
  protected mkz a(mla... paramVarArgs) {
    mla mla1 = paramVarArgs[0];
    return (new gog<mla, mkz>()).a(mla1, mkz.class, has.I(), "detalhar", "return");
  }
  
  protected void a(mkz parammkz) {
    super.onPostExecute(parammkz);
    this.c.a(parammkz);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  public void onPreExecute() {
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mrd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */