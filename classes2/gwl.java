import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.contacorrente.domain.ConsultarExtratoRequest;

public class gwl extends AsyncTask<ConsultarExtratoRequest, Void, fuy> {
  private static final String a = "ConsultarExtratoTask";
  
  private gkv<fuy> b;
  
  public gwl(gkv<fuy> paramgkv) {
    this.b = paramgkv;
  }
  
  protected fuy a(ConsultarExtratoRequest... paramVarArgs) {
    ConsultarExtratoRequest consultarExtratoRequest = paramVarArgs[0];
    try {
      return hat.g().a(consultarExtratoRequest.getConta().getAgencia(), consultarExtratoRequest.getConta().getCuenta(), consultarExtratoRequest.getFromDate(), consultarExtratoRequest.getToDate());
    } catch (Exception exception) {
      Log.e("ConsultarExtratoTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(fuy paramfuy) {
    this.b.a(paramfuy);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */