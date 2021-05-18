import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;

public class gwm extends AsyncTask<Void, Void, jxa> {
  private static final String a = "SaldosDetalhadoTask";
  
  private Conta b;
  
  private gkv<jxa> c;
  
  public gwm(Conta paramConta, gkv<jxa> paramgkv) {
    this.c = paramgkv;
    this.b = paramConta;
  }
  
  protected jxa a(Void... paramVarArgs) {
    try {
      return hat.f().a(this.b.getAgencia(), this.b.getCuenta());
    } catch (Exception exception) {
      Log.e("SaldosDetalhadoTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(jxa paramjxa) {
    super.onPostExecute(paramjxa);
    this.c.a(paramjxa);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */