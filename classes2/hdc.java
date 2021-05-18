import android.app.Activity;
import android.view.View;
import com.santander.app.dpp.DPPComprovanteActivity;

public class hdc implements View.OnClickListener {
  public hdc(DPPComprovanteActivity paramDPPComprovanteActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Comprovante_Acao", "Compartilhar");
    DPPComprovanteActivity.a(this.a).setVisibility(8);
    DPPComprovanteActivity.b(this.a).setVisibility(8);
    DPPComprovanteActivity.c(this.a).setVisibility(0);
    String str = DPPComprovanteActivity.d(this.a).a();
    DPPComprovanteActivity.a(this.a).setVisibility(0);
    DPPComprovanteActivity.b(this.a).setVisibility(0);
    DPPComprovanteActivity.c(this.a).setVisibility(8);
    myj.a((Activity)DPPComprovanteActivity.d(this.a), "Depósito Programado de Poupança", "", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */