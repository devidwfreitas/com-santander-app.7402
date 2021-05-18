import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mrg extends AsyncTask<mlt, Void, mls> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  private String d;
  
  public mrg(gkv paramgkv, Activity paramActivity, String paramString) {
    this.a = paramActivity;
    this.c = paramgkv;
    this.d = paramString;
  }
  
  protected mls a(mlt... paramVarArgs) {
    mlt mlt1 = paramVarArgs[0];
    return (new gog<mlt, mls>()).a(mlt1, mls.class, has.ae(), this.d, "return");
  }
  
  protected void a(mls parammls) {
    super.onPostExecute(parammls);
    this.c.a(parammls);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  protected void onPreExecute() {
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mrg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */