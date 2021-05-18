import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;

class hxx extends AsyncTask<Void, Void, CPConsultarLimiteResponse> {
  private static final String a = "EmpElegibilidadeCPTask";
  
  private gkv<CPConsultarLimiteResponse> b;
  
  hxx(gkv<CPConsultarLimiteResponse> paramgkv) {
    this.b = paramgkv;
  }
  
  protected CPConsultarLimiteResponse a(Void... paramVarArgs) {
    try {
      hyp hyp = new hyp();
      return (new gog<hyp, CPConsultarLimiteResponse>()).a(hyp, CPConsultarLimiteResponse.class, has.h(), "consultarLimiteCPHomeLogada", "return", true);
    } catch (Exception exception) {
      Log.e("EmpElegibilidadeCPTask", "doInBackground", exception);
      return null;
    } 
  }
  
  protected void a(CPConsultarLimiteResponse paramCPConsultarLimiteResponse) {
    super.onPostExecute(paramCPConsultarLimiteResponse);
    if (this.b != null)
      this.b.a(paramCPConsultarLimiteResponse); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */