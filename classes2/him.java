import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.TermoContratacaoEmprestimoActivity;

public class him implements View.OnClickListener {
  public him(TermoContratacaoEmprestimoActivity paramTermoContratacaoEmprestimoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_Antecipar13_Termo_Acao", "Declaracao");
    if (TermoContratacaoEmprestimoActivity.g(this.a).isChecked()) {
      TermoContratacaoEmprestimoActivity.h(this.a).setEnabled(true);
      return;
    } 
    TermoContratacaoEmprestimoActivity.h(this.a).setEnabled(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\him.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */