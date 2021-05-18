import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.AssistanceSinisterActivity;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;

public class lpr implements View.OnClickListener {
  public lpr(AssistanceSinisterActivity paramAssistanceSinisterActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Seguros_Sinistro_Acionar_PopUpAssistencia24h_Acao", "MeusSinistros");
    Intent intent = new Intent((Context)this.a, MySinisterActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */