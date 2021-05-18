import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mqy extends AsyncTask<mku, Void, mkt> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  private mkt d;
  
  public mqy(gkv paramgkv, Activity paramActivity) {
    this.c = paramgkv;
    this.a = paramActivity;
  }
  
  protected mkt a(mku... paramVarArgs) {
    mku mku1 = paramVarArgs[0];
    gog<Object, Object> gog = new gog<Object, Object>();
    mkt mkt1 = (mkt)gog.a(mku1, mkt.class, has.i(), "buscarFavorecidosSantanderISPB", "return");
    mkt mkt2 = (mkt)gog.a(mku1, mkt.class, has.i(), "buscarFavorecidosOutrosBancosISPB", "return");
    mkt mkt3 = new mkt();
    if (mkt1 != null && mkt1.a() != null && !mkt1.a().isEmpty())
      mkt3.a(mkt1.a()); 
    if (mkt2 != null && mkt2.b() != null && !mkt2.b().isEmpty())
      mkt3.b(mkt2.b()); 
    return mkt3;
  }
  
  protected void a(mkt parammkt) {
    super.onPostExecute(parammkt);
    this.c.a(parammkt);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(parammkt);
  }
  
  public void onPreExecute() {
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */