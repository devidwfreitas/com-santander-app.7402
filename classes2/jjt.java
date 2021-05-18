import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class jjt extends AsyncTask<jek, Void, jej> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public jjt(gkv paramgkv, Activity paramActivity) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  protected jej a(jek... paramVarArgs) {
    return (new gog<jek, jej>()).a(paramVarArgs[0], jej.class, has.C(), "obterAceite", "return");
  }
  
  protected void a(jej paramjej) {
    this.c.a(paramjej);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramjej);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */