import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;

class hqf implements htm<ConsignadoSimulationResponse> {
  hqf(hqd paramhqd, hqc paramhqc) {}
  
  public void a(int paramInt, ConsignadoSimulationResponse paramConsignadoSimulationResponse) {
    try {
      hqd.a(this.b, paramConsignadoSimulationResponse);
      this.a.a();
      return;
    } catch (ClassCastException classCastException) {
      this.a.b();
      return;
    } 
  }
  
  public void a(CPError paramCPError) {
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hqf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */