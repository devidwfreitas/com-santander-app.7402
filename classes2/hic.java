import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;

public class hic implements View.OnClickListener {
  public hic(SimulacaoAntecipacaoDTPasso1Activity paramSimulacaoAntecipacaoDTPasso1Activity) {}
  
  public void onClick(View paramView) {
    SimulacaoAntecipacaoDTPasso1Activity.a(this.a, "1");
    SimulacaoAntecipacaoDTPasso1Activity.d(this.a).setText(SimulacaoAntecipacaoDTPasso1Activity.c(this.a).c());
    SimulacaoAntecipacaoDTPasso1Activity.a(this.a, SimulacaoAntecipacaoDTPasso1Activity.e(this.a), null);
    SimulacaoAntecipacaoDTPasso1Activity.f(this.a).setEnabled(true);
    SimulacaoAntecipacaoDTPasso1Activity.f(this.a).setAlpha(1.0F);
    SimulacaoAntecipacaoDTPasso1Activity.g(this.a).setVisibility(0);
    frq.d("CreditoFinanciamento_Antecipar13_Parcelas_Acao", SimulacaoAntecipacaoDTPasso1Activity.e(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */