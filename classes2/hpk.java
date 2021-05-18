import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;

abstract class hpk implements hso<CPSimularEmprestimoResponse, ConsignadoCalculateResponse> {
  CPContratacao c;
  
  private hpk(hpg paramhpg) {}
  
  public void a(CPError paramCPError) {}
  
  public void a(CPSimularEmprestimoResponse paramCPSimularEmprestimoResponse) {
    this.c = (CPContratacao)paramCPSimularEmprestimoResponse;
  }
  
  public void a(ConsignadoCalculateResponse paramConsignadoCalculateResponse) {
    this.c = (CPContratacao)paramConsignadoCalculateResponse;
  }
  
  public void b(CPError paramCPError) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */