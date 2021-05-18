import android.os.AsyncTask;
import android.util.Log;

public class hxe extends AsyncTask<hun, Void, huo> {
  private static final String a = "CPUContratarTask";
  
  private gkv<huo> b;
  
  public hxe(gkv<huo> paramgkv) {
    this.b = paramgkv;
  }
  
  protected huo a(hun... paramVarArgs) {
    try {
      return (new gog<hun, huo>()).a(paramVarArgs[0], huo.class, has.u(), "contratarCreditoUnificado", "return", true);
    } catch (Exception exception) {
      Log.e("CPUContratarTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(huo paramhuo) {
    super.onPostExecute(paramhuo);
    if (this.b != null)
      this.b.a(paramhuo); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */