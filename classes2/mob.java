import android.content.DialogInterface;
import com.santander.app.transferencia.presentation.FormaTransferenciaActivity;

public class mob implements DialogInterface.OnClickListener {
  public mob(FormaTransferenciaActivity paramFormaTransferenciaActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    FormaTransferenciaActivity.s(this.a).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */