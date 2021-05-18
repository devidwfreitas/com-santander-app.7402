import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;
import com.santander.app.seguros.ui.contract.activities.ContractSuccessActivity;

public class lji implements View.OnClickListener {
  public lji(ContractSuccessActivity paramContractSuccessActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, MyInsurancesV2Activity.class);
    intent.addFlags(335577088);
    this.a.startActivity(intent);
    if (mgt.d("family-key")) {
      frq.d("Seguros_Contratacao_Vida_Comprovante_Acao", "BotaoIrParaHome");
    } else if (mgt.b(ContractSuccessActivity.b(this.a))) {
      frq.d("Seguros_Contratacao_AP_Comprovante_Acao", "BotaoIrParaHome");
    } 
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lji.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */