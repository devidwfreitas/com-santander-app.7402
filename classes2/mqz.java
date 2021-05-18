import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mqz extends AsyncTask<mlj, Void, mli> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public mqz(gkv paramgkv, Activity paramActivity) {
    this.c = paramgkv;
    this.a = paramActivity;
  }
  
  protected mli a(mlj... paramVarArgs) {
    mlj mlj1 = paramVarArgs[0];
    try {
      return (new gog<mlj, mli>()).a(mlj1, mli.class, has.j(), "buscarTodosISPB", "return");
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a(mli parammli) {
    super.onPostExecute(parammli);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mqz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */