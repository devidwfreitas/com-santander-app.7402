import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;

public class hie implements View.OnClickListener {
  public hie(SimulacaoAntecipacaoDTPasso1Activity paramSimulacaoAntecipacaoDTPasso1Activity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_Antecipar13_Acao", "Simular");
    if (SimulacaoAntecipacaoDTPasso1Activity.h(this.a)) {
      (new hih(this.a, null)).execute((Object[])new Void[0]);
      return;
    } 
    mxn.d(SimulacaoAntecipacaoDTPasso1Activity.a(this.a), this.a.getString(2131298209));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */