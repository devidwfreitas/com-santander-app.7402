import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mqx extends AsyncTask<Void, Void, mli> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public mqx(gkv paramgkv, Activity paramActivity) {
    this.c = paramgkv;
    this.a = paramActivity;
  }
  
  protected mli a(Void... paramVarArgs) {
    return (new gog<Object, mli>()).a(null, mli.class, has.j(), "listaBancosPopularesISPB", "return");
  }
  
  protected void a(mli parammli) {
    this.c.a(parammli);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mqx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */