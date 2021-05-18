import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FundosAplicacaoActivity;

public class jgk implements View.OnClickListener {
  public jgk(FundosAplicacaoActivity paramFundosAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    switch (jgj.a[FundosAplicacaoActivity.b(this.a).t().ordinal()]) {
      default:
        return;
      case 1:
      case 2:
        frq.d("Investimentos_Fundos_Aplicar_Acao", "Continuar");
        FundosAplicacaoActivity.f(this.a).a(FundosAplicacaoActivity.d(this.a).getText().toString(), FundosAplicacaoActivity.e(this.a));
        return;
      case 3:
        break;
    } 
    frq.d("Investimentos_Fundos_Resgate_Acao", "Continuar");
    FundosAplicacaoActivity.f(this.a).a(FundosAplicacaoActivity.d(this.a).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */