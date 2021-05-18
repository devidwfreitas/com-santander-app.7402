import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import com.santander.app.emprestimo.creditopessoal.domain.CPTextoCondicoesCPRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPTextoCondicoesCPResponse;

public class hty extends AsyncTask<CPTextoCondicoesCPRequest, Void, CPTextoCondicoesCPResponse> {
  private gkv<CPTextoCondicoesCPResponse> a;
  
  private Activity b;
  
  private Dialog c;
  
  public hty(Activity paramActivity, gkv<CPTextoCondicoesCPResponse> paramgkv) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected CPTextoCondicoesCPResponse a(CPTextoCondicoesCPRequest... paramVarArgs) {
    return (new gog<CPTextoCondicoesCPRequest, CPTextoCondicoesCPResponse>()).a(paramVarArgs[0], CPTextoCondicoesCPResponse.class, has.s(), "obterTextoCondicoesCP", "return");
  }
  
  protected void a(CPTextoCondicoesCPResponse paramCPTextoCondicoesCPResponse) {
    this.c.dismiss();
    if (paramCPTextoCondicoesCPResponse != null)
      this.a.a(paramCPTextoCondicoesCPResponse); 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.c = mxn.b(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */