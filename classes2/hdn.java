import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.santander.app.dpp.DPPListaProgramadaActivity;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hdn implements AdapterView.OnItemClickListener {
  public hdn(DPPListaProgramadaActivity paramDPPListaProgramadaActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    DPPListaProgramadaActivity.a(this.a, DPPListaProgramadaActivity.a(this.a).get(paramInt));
    Intent intent = new Intent(this.a.getApplicationContext(), DPPPreenchimentoActivity.class);
    Bundle bundle = new Bundle();
    bundle.putSerializable("dpp", DPPListaProgramadaActivity.c(this.a));
    bundle.putInt("opcao", 1);
    intent.putExtras(bundle);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */