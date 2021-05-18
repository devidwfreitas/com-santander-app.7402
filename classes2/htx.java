import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;

public class htx extends AsyncTask<CPSimularEmprestimoRequest, Void, CPSimularEmprestimoResponse> {
  private static final String a = "SimularEmprestimoTask";
  
  private gkv<CPSimularEmprestimoResponse> b;
  
  public htx(gkv<CPSimularEmprestimoResponse> paramgkv) {
    this.b = paramgkv;
  }
  
  protected CPSimularEmprestimoResponse a(CPSimularEmprestimoRequest... paramVarArgs) {
    try {
      return (new gog<CPSimularEmprestimoRequest, CPSimularEmprestimoResponse>()).a(paramVarArgs[0], CPSimularEmprestimoResponse.class, has.s(), "simularEmprestimoCP", "return", true);
    } catch (Exception exception) {
      Log.e("SimularEmprestimoTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(CPSimularEmprestimoResponse paramCPSimularEmprestimoResponse) {
    super.onPostExecute(paramCPSimularEmprestimoResponse);
    if (this.b != null)
      this.b.a(paramCPSimularEmprestimoResponse); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */