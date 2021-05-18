import android.app.Activity;
import android.app.Dialog;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratarEmprestimoRequest;
import com.santander.app.emprestimo.creditopessoal.domain.CPTextoCondicoesCPRequest;

public class htd implements htc {
  private hoy a;
  
  private Activity b;
  
  public htd(Activity paramActivity, hoy paramhoy) {
    this.a = paramhoy;
    this.b = paramActivity;
  }
  
  public void a(CPContratarEmprestimoRequest paramCPContratarEmprestimoRequest) {
    (new htw(this.b, new htf(this))).execute((Object[])new CPContratarEmprestimoRequest[] { paramCPContratarEmprestimoRequest });
  }
  
  public void a(String paramString) {
    (new hty(this.b, new hte(this))).execute((Object[])new CPTextoCondicoesCPRequest[] { new CPTextoCondicoesCPRequest(paramString) });
  }
  
  public void b(String paramString) {
    Dialog dialog = mxn.b(this.b);
    paramString = "payroll-loans/v1/contract-terms?contractType=" + paramString;
    (new hth(this, gnp.a().a(paramString, im.GET, true), dialog)).a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */