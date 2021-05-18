import android.os.AsyncTask;

public class ibi extends AsyncTask<hzi, Void, hzj> {
  private gkv a;
  
  public ibi(gkv paramgkv) {
    this.a = paramgkv;
  }
  
  protected hzj a(hzi... paramVarArgs) {
    return (new gog<hzi, hzj>()).a(paramVarArgs[0], hzj.class, has.aj(), "obterNomeUsuario", "return", "http://webservice.atendimento.app.bsbr.altec.com/", false);
  }
  
  protected void a(hzj paramhzj) {
    super.onPostExecute(paramhzj);
    this.a.a(paramhzj);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ibi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */