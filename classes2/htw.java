import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratarEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratarEmprestimoResponse;

public class htw extends AsyncTask<CPContratarEmprestimoRequest, Void, CPContratarEmprestimoResponse> {
  private Activity a;
  
  private gkv<CPContratarEmprestimoResponse> b;
  
  private Dialog c;
  
  public htw(Activity paramActivity, gkv<CPContratarEmprestimoResponse> paramgkv) {
    this.b = paramgkv;
    this.a = paramActivity;
  }
  
  protected CPContratarEmprestimoResponse a(CPContratarEmprestimoRequest... paramVarArgs) {
    return (new gog<CPContratarEmprestimoRequest, CPContratarEmprestimoResponse>()).a(paramVarArgs[0], CPContratarEmprestimoResponse.class, has.s(), "contratarEmprestimoCP", "return", false);
  }
  
  protected void a(CPContratarEmprestimoResponse paramCPContratarEmprestimoResponse) {
    this.c.dismiss();
    if (paramCPContratarEmprestimoResponse != null)
      this.b.a(paramCPContratarEmprestimoResponse); 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.c = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */