import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.dpp.DPPConfirmacaoActivity;
import com.santander.app.dpp.DPPValidacaoActivity;

public class hdf implements View.OnClickListener {
  public hdf(DPPConfirmacaoActivity paramDPPConfirmacaoActivity) {}
  
  public void onClick(View paramView) {
    String str;
    if (DPPConfirmacaoActivity.a(this.a)) {
      str = "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Confirmacao_Acao";
    } else {
      str = "Investimentos_Poupanca_DepositoProgramado_Terceiros_Confirmacao_Acao";
    } 
    frq.d(str, "Continuar");
    Intent intent = new Intent(this.a.getApplicationContext(), DPPValidacaoActivity.class);
    Bundle bundle = new Bundle();
    bundle.putSerializable("dpp", DPPConfirmacaoActivity.b(this.a));
    bundle.putInt("opcao", DPPConfirmacaoActivity.c(this.a));
    bundle.putString("isProprioCliente", String.valueOf(DPPConfirmacaoActivity.a(this.a)));
    intent.putExtras(bundle);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */