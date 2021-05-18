import android.view.View;
import com.santander.app.transferencia.presentation.TransferenciasActivity;

public class mox implements View.OnClickListener {
  public mox(TransferenciasActivity paramTransferenciasActivity) {}
  
  public void onClick(View paramView) {
    TransferenciasActivity.d(this.a).setText("0");
    TransferenciasActivity.c(this.a).setEnabled(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */