import android.os.AsyncTask;
import android.util.Log;

class hxz extends AsyncTask<Void, Void, hyq> {
  private static final String a = "ElegibilidadeDTTask";
  
  private gkv<hyq> b;
  
  hxz(gkv<hyq> paramgkv) {
    this.b = paramgkv;
  }
  
  protected hyq a(Void... paramVarArgs) {
    try {
      hyp hyp = new hyp();
      return (new gog<hyp, hyq>()).a(hyp, hyq.class, has.T(), "identificaAntecipacao13", "return", true);
    } catch (Exception exception) {
      Log.e("ElegibilidadeDTTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(hyq paramhyq) {
    super.onPostExecute(paramhyq);
    if (this.b != null)
      this.b.a(paramhyq); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */