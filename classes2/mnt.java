import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import com.santander.app.transferencia.presentation.DetalheTransferenciaProgramadaActivity;

public class mnt implements View.OnClickListener {
  public mnt(DetalheTransferenciaProgramadaActivity paramDetalheTransferenciaProgramadaActivity) {}
  
  public void onClick(View paramView) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.a);
    builder.setView(this.a.getLayoutInflater().inflate(2130968958, null)).setCancelable(false).setPositiveButton(2131296656, new mnv(this)).setNegativeButton(2131296654, new mnu(this));
    DetalheTransferenciaProgramadaActivity.a(this.a, builder.create());
    DetalheTransferenciaProgramadaActivity.a(this.a).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */