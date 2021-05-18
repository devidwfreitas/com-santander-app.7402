import android.view.View;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hdx implements View.OnClickListener {
  public hdx(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void onClick(View paramView) {
    String str;
    if (DPPPreenchimentoActivity.a(this.a)) {
      str = "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_DataDeInicio_Acao";
    } else {
      str = "Investimentos_Poupanca_DepositoProgramado_Terceiros_DataDeInicio_Acao";
    } 
    frq.d(str, DPPPreenchimentoActivity.f(this.a).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */