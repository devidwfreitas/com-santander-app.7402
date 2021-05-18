import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import com.santander.app.transferencia.presentation.TransferenciasActivity;

public class mpb implements View.OnLongClickListener {
  public mpb(TransferenciasActivity paramTransferenciasActivity) {}
  
  public boolean onLongClick(View paramView) {
    mlr mlr = (mlr)paramView.getTag();
    (new AlertDialog.Builder((Context)this.a)).setView(this.a.getLayoutInflater().inflate(2130968958, null)).setCancelable(false).setPositiveButton(2131296656, new mpd(this)).setNegativeButton(2131296654, new mpc(this));
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */