import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso2Activity;

public class hjr implements View.OnClickListener {
  public hjr(SimulacaoAntecipacaoIRPasso2Activity paramSimulacaoAntecipacaoIRPasso2Activity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_Acao", "InformativoParcelas");
    mxn.a(SimulacaoAntecipacaoIRPasso2Activity.a(this.a), this.a.getResources().getString(2131298971), this.a.getResources().getString(2131298904), false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */