import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;

public class hjm implements View.OnFocusChangeListener {
  public hjm(SimulacaoAntecipacaoIRPasso1Activity paramSimulacaoAntecipacaoIRPasso1Activity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean) {
      SimulacaoAntecipacaoIRPasso1Activity.a(this.a).setVisibility(8);
      SimulacaoAntecipacaoIRPasso1Activity.b(this.a).setEnabled(false);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */