import android.os.AsyncTask;

public class kjb extends AsyncTask<Void, Void, kht> {
  private gkv a;
  
  private khu b;
  
  public kjb(khu paramkhu, gkv paramgkv) {
    this.b = paramkhu;
    this.a = paramgkv;
  }
  
  protected kht a(Void... paramVarArgs) {
    return (new gog<khu, kht>()).a(this.b, kht.class, has.q(), "consultarOperadoras", "operadoraRecargaResultListResponse");
  }
  
  protected void a(kht paramkht) {
    super.onPostExecute(paramkht);
    this.a.a(paramkht);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */