import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.content.ContextCompat;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class iuk implements DialogInterface.OnShowListener {
  public iuk(HomeActivity paramHomeActivity, AlertDialog paramAlertDialog) {}
  
  public void onShow(DialogInterface paramDialogInterface) {
    this.a.getButton(-1).setTextColor(ContextCompat.getColor((Context)this.b, 2131623961));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iuk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */