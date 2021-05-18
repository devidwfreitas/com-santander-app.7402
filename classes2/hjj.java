import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.CustoEfetivoTotalAntecipacaoIRActivity;

public class hjj implements View.OnClickListener {
  public hjj(CustoEfetivoTotalAntecipacaoIRActivity paramCustoEfetivoTotalAntecipacaoIRActivity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_CET_Acao", "Declaracao");
    CustoEfetivoTotalAntecipacaoIRActivity.c(this.a).setEnabled(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */