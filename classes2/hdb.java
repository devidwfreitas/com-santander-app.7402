import android.content.Intent;
import android.view.View;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;
import com.santander.app.dpp.DPPComprovanteActivity;

public class hdb implements View.OnClickListener {
  public hdb(DPPComprovanteActivity paramDPPComprovanteActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Comprovante_Acao", "Fechar");
    this.a.startActivity((new Intent(this.a.getApplicationContext(), Poupanca_posicaoconsolidadaActivity.class)).addFlags(67108864));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */