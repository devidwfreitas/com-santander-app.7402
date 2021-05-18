import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;

public class hjo implements View.OnClickListener {
  public hjo(SimulacaoAntecipacaoIRPasso1Activity paramSimulacaoAntecipacaoIRPasso1Activity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_Acao", "Simular");
    if (SimulacaoAntecipacaoIRPasso1Activity.f(this.a)) {
      (new hjq(this.a, null)).execute((Object[])new Void[0]);
      return;
    } 
    mxn.d(SimulacaoAntecipacaoIRPasso1Activity.d(this.a), this.a.getString(2131298209));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */