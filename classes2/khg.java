import android.os.AsyncTask;

public class khg extends AsyncTask<Void, Void, kgk> {
  private kgl a;
  
  private gkv b;
  
  public khg(kgl paramkgl, gkv paramgkv) {
    this.a = paramkgl;
    this.b = paramgkv;
  }
  
  protected kgk a(Void... paramVarArgs) {
    return (new gog<kgl, kgk>()).a(this.a, kgk.class, has.q(), "consultarProgramacoesRecarga", "programacoesRecargaResultListResponse");
  }
  
  protected void a(kgk paramkgk) {
    super.onPostExecute(paramkgk);
    this.b.a(paramkgk);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */