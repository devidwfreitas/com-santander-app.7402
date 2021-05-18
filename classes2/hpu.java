import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;

class hpu extends hpy<CPSimularEmprestimoResponse, ConsignadoCalculateResponse> {
  hpu(hpp paramhpp, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, hpn paramhpn) {
    super(paramhpp, paramBoolean1, paramBoolean2);
  }
  
  public void a(CPSimularEmprestimoResponse paramCPSimularEmprestimoResponse, ConsignadoCalculateResponse paramConsignadoCalculateResponse) {
    if (paramCPSimularEmprestimoResponse != null) {
      paramCPSimularEmprestimoResponse.setConta(hpp.e(this.d)).setConsultarLimiteResponse(hpp.c(this.d)).setDiaPagamentoSelecionado(this.a);
      hpp.a(this.d, paramCPSimularEmprestimoResponse);
      hpp.d(this.d).a((hxm)paramCPSimularEmprestimoResponse);
    } 
    if (paramConsignadoCalculateResponse != null) {
      paramConsignadoCalculateResponse.setConta(hpp.e(this.d)).setConsignadoSimulationResponse(hpp.a(this.d));
      hpp.a(this.d, paramConsignadoCalculateResponse);
      hpp.b(this.d).a((hxq)hpp.f(this.d));
      if (this.b == 1)
        hpp.d(this.d).a((hxq)paramConsignadoCalculateResponse); 
    } 
    if (paramCPSimularEmprestimoResponse == null && this.d.h() != null && this.d.h().isMorno()) {
      this.c.a(null);
      return;
    } 
    this.c.a((hxm)paramCPSimularEmprestimoResponse, this.d.h());
  }
  
  public void c(CPError paramCPError) {
    this.c.a(paramCPError);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */