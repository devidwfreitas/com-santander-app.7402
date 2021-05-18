import android.os.AsyncTask;
import android.util.Log;

public class mwb extends AsyncTask<mri, Void, mrj> {
  private static final String a = "FormatarDadosClienteTask";
  
  private gkv<mrj> b;
  
  public mwb(gkv<mrj> paramgkv) {
    this.b = paramgkv;
  }
  
  protected mrj a(mri... paramVarArgs) {
    try {
      return (new gog<mri, mrj>()).a(paramVarArgs[0], mrj.class, has.an(), "formatarDadosCliente", "return", true);
    } catch (Exception exception) {
      Log.e("FormatarDadosClienteTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(mrj parammrj) {
    super.onPostExecute(parammrj);
    if (this.b != null)
      this.b.a(parammrj); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */