import android.app.Dialog;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;

class hpa implements hpo {
  hpa(hoz paramhoz, Dialog paramDialog) {}
  
  public void a(CPContratacao paramCPContratacao) {
    hoz.a(this.b, paramCPContratacao);
    hoz.b(this.b).a(hoz.a(this.b));
    this.a.dismiss();
  }
  
  public void a(CPError paramCPError) {
    if (paramCPError != null) {
      hoz.b(this.b).a(paramCPError.getMessage());
    } else {
      hoz.b(this.b).a(hoz.c(this.b).getString(2131297343));
    } 
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */