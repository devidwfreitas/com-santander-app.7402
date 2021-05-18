import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ConfirmacaoAplicacaoActivity;

public class jfx implements View.OnClickListener {
  public jfx(ConfirmacaoAplicacaoActivity paramConfirmacaoAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    if (!ConfirmacaoAplicacaoActivity.c(this.a)) {
      ConfirmacaoAplicacaoActivity.a(this.a, true);
      ConfirmacaoAplicacaoActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130838245));
      ConfirmacaoAplicacaoActivity.e(this.a).setEnabled(true);
      frq.d("Investimentos_Fundos_Aplicar_Termo_Acao", "Sim");
      return;
    } 
    ConfirmacaoAplicacaoActivity.a(this.a, false);
    ConfirmacaoAplicacaoActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130838244));
    ConfirmacaoAplicacaoActivity.e(this.a).setEnabled(false);
    frq.d("Investimentos_Fundos_Aplicar_Termo_Acao", "Nao");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */