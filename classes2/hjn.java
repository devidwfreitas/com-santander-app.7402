import android.view.KeyEvent;
import android.widget.TextView;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;

public class hjn implements TextView.OnEditorActionListener {
  public hjn(SimulacaoAntecipacaoIRPasso1Activity paramSimulacaoAntecipacaoIRPasso1Activity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    if (SimulacaoAntecipacaoIRPasso1Activity.c(this.a).getText().toString() == null || SimulacaoAntecipacaoIRPasso1Activity.c(this.a).getText().toString().equals("")) {
      mxn.d(SimulacaoAntecipacaoIRPasso1Activity.d(this.a), this.a.getString(2131298209));
      return true;
    } 
    frq.a("CreditoFinanciamento_AnteciparIR_ImpostoARestituir_Acao", naj.d(SimulacaoAntecipacaoIRPasso1Activity.c(this.a).getText().toString()));
    SimulacaoAntecipacaoIRPasso1Activity.e(this.a);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */