import android.view.View;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hdv implements View.OnClickListener {
  public hdv(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void onClick(View paramView) {
    DPPPreenchimentoActivity.a(this.a, true);
    frq.d("Investimentos_Poupanca_DepositoProgramado_Acao", "ProprioCliente");
    if (DPPPreenchimentoActivity.c(this.a) != 1) {
      this.a.c.setVisibility(0);
      this.a.d.setVisibility(4);
      this.a.e.setVisibility(8);
    } 
    DPPPreenchimentoActivity.a(this.a, DPPPreenchimentoActivity.d(this.a).c(), true);
    if (DPPPreenchimentoActivity.d(this.a).c().isEmpty()) {
      DPPPreenchimentoActivity.b(this.a, false);
      this.a.findViewById(2131757115).setVisibility(0);
      this.a.findViewById(2131757116).setVisibility(0);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */