import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;

public class hia implements View.OnClickListener {
  public hia(SimulacaoAntecipacaoDTPasso1Activity paramSimulacaoAntecipacaoDTPasso1Activity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_Antecipar13_Acao", "InformativoAntecipacao13Salario");
    mxn.a(SimulacaoAntecipacaoDTPasso1Activity.a(this.a), this.a.getResources().getString(2131298992), this.a.getResources().getString(2131298167), false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */