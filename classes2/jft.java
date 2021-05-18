import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ConfirmacaoAplicacaoActivity;

public class jft implements View.OnClickListener {
  public jft(ConfirmacaoAplicacaoActivity paramConfirmacaoAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    switch (jfu.a[ConfirmacaoAplicacaoActivity.a(this.a).t().ordinal()]) {
      default:
        return;
      case 1:
      case 2:
        frq.d("Investimentos_Fundos_Aplicar_Acao", "Concluir");
        ConfirmacaoAplicacaoActivity.b(this.a).a(ConfirmacaoAplicacaoActivity.a(this.a), true);
        return;
      case 3:
        break;
    } 
    frq.d("Investimentos_Fundos_Resgate_Acao", "Concluir");
    ConfirmacaoAplicacaoActivity.b(this.a).b(ConfirmacaoAplicacaoActivity.a(this.a), true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */