import android.os.AsyncTask;
import android.util.Log;

class hmv extends AsyncTask<hkz, Void, hla> {
  private static final String a = "CPCancelarContratoTask";
  
  private gkv<hla> b;
  
  hmv(gkv<hla> paramgkv) {
    this.b = paramgkv;
  }
  
  protected hla a(hkz... paramVarArgs) {
    try {
      return (new gog<hkz, hla>()).a(paramVarArgs[0], hla.class, has.s(), "cancelarContratoEmprestimo", "return", true);
    } catch (Exception exception) {
      Log.e("CPCancelarContratoTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(hla paramhla) {
    super.onPostExecute(paramhla);
    if (this.b != null)
      this.b.a(paramhla); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */