import android.view.View;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hdr implements View.OnClickListener {
  public hdr(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void onClick(View paramView) {
    String str;
    if (DPPPreenchimentoActivity.a(this.a)) {
      str = "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_NumeroDeMeses_Acao";
    } else {
      str = "Investimentos_Poupanca_DepositoProgramado_Terceiros_NumeroDeMeses_Acao";
    } 
    frq.d(str, DPPPreenchimentoActivity.b(this.a).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */