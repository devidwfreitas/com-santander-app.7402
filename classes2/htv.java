import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;

public class htv extends AsyncTask<CPConsultarLimiteRequest, Void, CPConsultarLimiteResponse> {
  private static final String a = "ConsultarLimiteTask";
  
  private gkv<CPConsultarLimiteResponse> b;
  
  public htv(gkv<CPConsultarLimiteResponse> paramgkv) {
    this.b = paramgkv;
  }
  
  protected CPConsultarLimiteResponse a(CPConsultarLimiteRequest... paramVarArgs) {
    try {
      return (new gog<CPConsultarLimiteRequest, CPConsultarLimiteResponse>()).a(paramVarArgs[0], CPConsultarLimiteResponse.class, has.s(), "consultarLimiteCP", "return", true);
    } catch (Exception exception) {
      Log.e("ConsultarLimiteTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(CPConsultarLimiteResponse paramCPConsultarLimiteResponse) {
    super.onPostExecute(paramCPConsultarLimiteResponse);
    if (this.b != null)
      this.b.a(paramCPConsultarLimiteResponse); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */