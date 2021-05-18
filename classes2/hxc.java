import android.os.AsyncTask;
import android.util.Log;

public class hxc extends AsyncTask<hul, Void, hus> {
  private static final String a = "CPUCalcularTask";
  
  private gkv<hus> b;
  
  public hxc(gkv<hus> paramgkv) {
    this.b = paramgkv;
  }
  
  protected hus a(hul... paramVarArgs) {
    try {
      return (new gog<hul, hus>()).a(paramVarArgs[0], hus.class, has.u(), "calcular", "return", true);
    } catch (Exception exception) {
      Log.e("CPUCalcularTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(hus paramhus) {
    super.onPostExecute(paramhus);
    if (this.b != null)
      this.b.a(paramhus); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */