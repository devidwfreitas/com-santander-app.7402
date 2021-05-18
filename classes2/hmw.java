import android.os.AsyncTask;
import android.util.Log;

class hmw extends AsyncTask<hlc, Void, hld> {
  private static final String a = "CPConsultarContratos";
  
  private gkv<hld> b;
  
  hmw(gkv<hld> paramgkv) {
    this.b = paramgkv;
  }
  
  protected hld a(hlc... paramVarArgs) {
    try {
      return (new gog<hlc, hld>()).a(paramVarArgs[0], hld.class, has.s(), "consultaContratosCP", "return", true);
    } catch (Exception exception) {
      Log.e("CPConsultarContratos", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(hld paramhld) {
    super.onPostExecute(paramhld);
    if (this.b != null)
      this.b.a(paramhld); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */