import android.app.Dialog;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.ConsultaTermosContratoCSG;

class hth extends htn<ConsultaTermosContratoCSG> {
  hth(htd paramhtd, ir paramir, Dialog paramDialog) {
    super(paramir);
  }
  
  public void a(int paramInt, ConsultaTermosContratoCSG paramConsultaTermosContratoCSG) {
    htd.a(this.b).a(paramConsultaTermosContratoCSG.getContractTerms());
    this.a.dismiss();
  }
  
  public void a(CPError paramCPError) {
    String str;
    hoy hoy = htd.a(this.b);
    if (paramCPError != null) {
      str = paramCPError.getMessage();
    } else {
      str = "";
    } 
    hoy.b(str);
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */