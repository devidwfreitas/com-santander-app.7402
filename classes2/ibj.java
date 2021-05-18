import android.os.AsyncTask;

public class ibj extends AsyncTask<hzq, Void, hzr> {
  private gkv<hzr> a;
  
  public ibj(gkv<hzr> paramgkv) {
    this.a = paramgkv;
  }
  
  protected hzr a(hzq... paramVarArgs) {
    return (new gog<hzq, hzr>()).a(paramVarArgs[0], hzr.class, has.aj(), "obterServico", "return", "http://webservice.atendimento.app.bsbr.altec.com/", false);
  }
  
  protected void a(hzr paramhzr) {
    super.onPostExecute(paramhzr);
    this.a.a(paramhzr);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ibj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */