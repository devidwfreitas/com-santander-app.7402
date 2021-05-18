import android.text.TextUtils;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;

class hpr extends hpy<CPConsultarLimiteResponse, ConsignadoSimulationResponse> {
  hpr(hpp paramhpp, boolean paramBoolean1, boolean paramBoolean2, hpm paramhpm) {
    super(paramhpp, paramBoolean1, paramBoolean2);
  }
  
  public void a(CPConsultarLimiteResponse paramCPConsultarLimiteResponse, ConsignadoSimulationResponse paramConsignadoSimulationResponse) {
    hpp.a(this.b, paramCPConsultarLimiteResponse);
    if (paramConsignadoSimulationResponse != null) {
      hpp.a(this.b, paramConsignadoSimulationResponse);
      hpp.b(this.b).a((hxq)hpp.a(this.b));
    } 
    hpp.d(this.b).a((hxm)hpp.c(this.b));
    hpp.d(this.b).a((hxq)hpp.a(this.b));
    hpp.a(this.b, this.a);
  }
  
  public void c(CPError paramCPError) {
    if (paramCPError != null && !TextUtils.isEmpty(paramCPError.getMessage())) {
      this.a.a();
      return;
    } 
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */