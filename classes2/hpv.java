import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;

class hpv extends hpy<CPSimularEmprestimoResponse, ConsignadoCalculateResponse> {
  hpv(hpp paramhpp, hpo paramhpo) {
    super(paramhpp);
  }
  
  public void a(CPSimularEmprestimoResponse paramCPSimularEmprestimoResponse, ConsignadoCalculateResponse paramConsignadoCalculateResponse) {
    if (paramCPSimularEmprestimoResponse != null) {
      paramCPSimularEmprestimoResponse.setConta(hpp.e(this.b)).setConsultarLimiteResponse(hpp.c(this.b)).setDiaPagamentoSelecionado(hpp.g(this.b));
      hpp.a(this.b, paramCPSimularEmprestimoResponse);
    } 
    if (paramConsignadoCalculateResponse != null) {
      paramConsignadoCalculateResponse.setConta(hpp.e(this.b)).setConsignadoSimulationResponse(hpp.a(this.b));
      hpp.a(this.b, paramConsignadoCalculateResponse);
      hpp.b(this.b).a((hxq)hpp.f(this.b));
    } 
    if (this.b.q() == 11) {
      this.a.a((CPContratacao)paramConsignadoCalculateResponse);
      return;
    } 
    this.a.a((CPContratacao)paramCPSimularEmprestimoResponse);
  }
  
  public void c(CPError paramCPError) {
    this.a.a(paramCPError);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */