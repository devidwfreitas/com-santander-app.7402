import android.os.AsyncTask;

public class ibh extends AsyncTask<hzf, Void, hzg> {
  private gkv a;
  
  public ibh(gkv paramgkv) {
    this.a = paramgkv;
  }
  
  protected hzg a(hzf... paramVarArgs) {
    return (new gog<hzf, hzg>()).a(paramVarArgs[0], hzg.class, has.aj(), "obterMotivo", "return", "http://webservice.atendimento.app.bsbr.altec.com/", false);
  }
  
  protected void a(hzg paramhzg) {
    super.onPostExecute(paramhzg);
    this.a.a(paramhzg);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ibh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */