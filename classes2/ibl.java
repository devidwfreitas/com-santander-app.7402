import android.os.AsyncTask;

public class ibl extends AsyncTask<hzs, Integer, hzt> {
  private gkv<hzt> a;
  
  public ibl(gkv<hzt> paramgkv) {
    this.a = paramgkv;
  }
  
  protected hzt a(hzs... paramVarArgs) {
    return (new gog<hzs, hzt>()).a(paramVarArgs[0], hzt.class, has.aj(), "verificarSistema", "return", "http://webservice.atendimento.app.bsbr.altec.com/", false);
  }
  
  protected void a(hzt paramhzt) {
    super.onPostExecute(paramhzt);
    if (this.a != null)
      this.a.a(paramhzt); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ibl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */