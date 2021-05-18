import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.TermoContratacaoEmprestimoAntecipacaoIRActivity;

public class hjw implements View.OnClickListener {
  public hjw(TermoContratacaoEmprestimoAntecipacaoIRActivity paramTermoContratacaoEmprestimoAntecipacaoIRActivity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_Termo_Acao", "Declaracao");
    if (TermoContratacaoEmprestimoAntecipacaoIRActivity.g(this.a).isChecked()) {
      TermoContratacaoEmprestimoAntecipacaoIRActivity.h(this.a).setEnabled(true);
      return;
    } 
    TermoContratacaoEmprestimoAntecipacaoIRActivity.h(this.a).setEnabled(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */