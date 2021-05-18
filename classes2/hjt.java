import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso2Activity;

public class hjt implements View.OnClickListener {
  public hjt(SimulacaoAntecipacaoIRPasso2Activity paramSimulacaoAntecipacaoIRPasso2Activity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_Acao", "NovaSimulacao");
    Intent intent = new Intent((Context)SimulacaoAntecipacaoIRPasso2Activity.a(this.a), SimulacaoAntecipacaoIRPasso1Activity.class);
    intent.setFlags(67108864);
    SimulacaoAntecipacaoIRPasso2Activity.a(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */