import android.os.AsyncTask;
import android.util.Log;

class hyo extends AsyncTask<Void, Void, hyq> {
  private static final String a = "ElegibilidadeIRTask";
  
  private gkv<hyq> b;
  
  hyo(gkv<hyq> paramgkv) {
    this.b = paramgkv;
  }
  
  protected hyq a(Void... paramVarArgs) {
    try {
      hyp hyp = new hyp();
      return (new gog<hyp, hyq>()).a(hyp, hyq.class, has.U(), "identificaAntecipacaoIR", "return", true);
    } catch (Exception exception) {
      Log.e("ElegibilidadeIRTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(hyq paramhyq) {
    super.onPostExecute(paramhyq);
    if (this.b != null)
      this.b.a(paramhyq); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hyo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */