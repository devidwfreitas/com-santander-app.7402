import android.content.Context;
import com.santander.app.emprestimo.acordo.presentation.AcordoSimulacaoActivity;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;

class gxp implements hxy {
  gxp(gxj paramgxj, int paramInt) {}
  
  public void a() {
    gxg.j(this.b.a).a((Context)gxg.i(this.b.a), this.a);
  }
  
  public void a(@hyr int paramInt) {
    if (this.a == 10) {
      if (paramInt == 9) {
        gxg.h(this.b.a).a(AcordoSimulacaoActivity.class);
      } else {
        gxg.h(this.b.a).a(CPSimulacaoActivity.class);
      } 
    } else if (this.a == 9) {
      gxg.h(this.b.a).a(AcordoSimulacaoActivity.class);
    } else if (this.a == 7) {
      gxg.h(this.b.a).a(SimulacaoAntecipacaoDTPasso1Activity.class);
    } else if (this.a == 8) {
      gxg.h(this.b.a).a(SimulacaoAntecipacaoIRPasso1Activity.class);
    } 
    this.b.a.a.f().w().b(Boolean.valueOf(true));
  }
  
  public void b() {
    gxg.j(this.b.a).b((Context)gxg.i(this.b.a), this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gxp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */