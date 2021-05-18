import android.os.AsyncTask;
import android.util.Log;

public class hxd extends AsyncTask<hum, Void, hus> {
  private static final String a = "CPUConsultarTask";
  
  private gkv<hus> b;
  
  public hxd(gkv<hus> paramgkv) {
    this.b = paramgkv;
  }
  
  protected hus a(hum... paramVarArgs) {
    try {
      return (new gog<hum, hus>()).a(paramVarArgs[0], hus.class, has.u(), "consultarContratos", "return", true);
    } catch (Exception exception) {
      Log.e("CPUConsultarTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(hus paramhus) {
    super.onPostExecute(paramhus);
    if (this.b != null)
      this.b.a(paramhus); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */