import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FundosAplicacaoActivity;

public class jgn implements View.OnClickListener {
  public jgn(FundosAplicacaoActivity paramFundosAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    if (FundosAplicacaoActivity.b(this.a).t().equals(jdk.APLICAR) || FundosAplicacaoActivity.b(this.a).t().equals(jdk.REAPLICAR)) {
      frq.d("Investimentos_Fundos_Aplicar_DataOpcao_Acao", "Hoje");
    } else {
      frq.d("Investimentos_Fundos_Resgate_Data_Opcao", "Hoje");
    } 
    FundosAplicacaoActivity.g(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */