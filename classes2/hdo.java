import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.dpp.DPPListaProgramadaActivity;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hdo implements View.OnClickListener {
  public hdo(DPPListaProgramadaActivity paramDPPListaProgramadaActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), DPPPreenchimentoActivity.class);
    Bundle bundle = new Bundle();
    bundle.putSerializable("dpp", DPPListaProgramadaActivity.c(this.a));
    bundle.putInt("opcao", 0);
    intent.putExtras(bundle);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */