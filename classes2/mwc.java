import android.os.AsyncTask;
import android.util.Log;

public class mwc extends AsyncTask<mrm, Void, mrn> {
  private static final String a = "ListaTodosBancosTask";
  
  private gkv<mrn> b;
  
  public mwc(gkv<mrn> paramgkv) {
    this.b = paramgkv;
  }
  
  protected mrn a(mrm... paramVarArgs) {
    try {
      return (new gog<mrm, mrn>()).a(paramVarArgs[0], mrn.class, has.an(), "listaTodosBancos", "return", true);
    } catch (Exception exception) {
      Log.e("ListaTodosBancosTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(mrn parammrn) {
    super.onPostExecute(parammrn);
    if (this.b != null)
      this.b.a(parammrn); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */