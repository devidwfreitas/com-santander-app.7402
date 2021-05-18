import android.os.AsyncTask;

public class kko extends AsyncTask<Void, Void, kia> {
  private kgj a;
  
  private gkv b;
  
  public kko(kgj paramkgj, gkv paramgkv) {
    this.a = paramkgj;
    this.b = paramgkv;
  }
  
  protected kia a(Void... paramVarArgs) {
    return (new gog<kgj, kia>()).a(this.a, kia.class, has.q(), "cancelarProgramacaoRecarga", "recargaResponse");
  }
  
  protected void a(kia paramkia) {
    super.onPostExecute(paramkia);
    this.b.a(paramkia);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */