import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;

public class lpu implements AdapterView.OnItemClickListener {
  public lpu(ConfirmationPaymentActivity paramConfirmationPaymentActivity, Dialog paramDialog) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    mlj mlj;
    if (((mkq)paramAdapterView.getAdapter().getItem(paramInt)).a().equals("99999")) {
      mlj = new mlj();
      mlj.setConnUuid(miq.C().i());
      mlj.setTokenSessao(miq.C().j());
      ConfirmationPaymentActivity.j(this.b).a(new lpv(this), mlj);
    } else {
      ConfirmationPaymentActivity.e(this.b).setText(mlj.getAdapter().getItem(paramInt).toString());
    } 
    this.a.cancel();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */