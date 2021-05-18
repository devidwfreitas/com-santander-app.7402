import android.os.AsyncTask;
import android.util.Log;

public class hxf extends AsyncTask<hup, Void, huq> {
  private static final String a = "CPUCalcularTask";
  
  private gkv<huq> b;
  
  public hxf(gkv<huq> paramgkv) {
    this.b = paramgkv;
  }
  
  protected huq a(hup... paramVarArgs) {
    try {
      return (new gog<hup, huq>()).a(paramVarArgs[0], huq.class, has.u(), "validarElegibilidadeCreditoUnificado", "return", true);
    } catch (Exception exception) {
      Log.e("CPUCalcularTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(huq paramhuq) {
    super.onPostExecute(paramhuq);
    if (this.b != null)
      this.b.a(paramhuq); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */