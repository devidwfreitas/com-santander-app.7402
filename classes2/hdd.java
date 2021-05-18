import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.dpp.DPPCondicoesContratoActivity;
import com.santander.app.dpp.DPPConfirmacaoActivity;

public class hdd implements View.OnClickListener {
  public hdd(DPPCondicoesContratoActivity paramDPPCondicoesContratoActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), DPPConfirmacaoActivity.class);
    Bundle bundle = new Bundle();
    bundle.putSerializable("dpp", DPPCondicoesContratoActivity.a(this.a));
    intent.putExtras(bundle);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */