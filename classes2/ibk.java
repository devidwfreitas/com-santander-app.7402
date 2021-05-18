import android.os.AsyncTask;

public class ibk extends AsyncTask<hzk, Void, hzm> {
  private gkv a;
  
  public ibk(gkv paramgkv) {
    this.a = paramgkv;
  }
  
  protected hzm a(hzk... paramVarArgs) {
    return (new gog<hzk, hzm>()).a(paramVarArgs[0], hzm.class, has.aj(), "registrarManifestacao", "return", "http://webservice.atendimento.app.bsbr.altec.com/", false);
  }
  
  protected void a(hzm paramhzm) {
    super.onPostExecute(paramhzm);
    this.a.a(paramhzm);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ibk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */