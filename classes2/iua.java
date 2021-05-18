import android.app.AlertDialog;
import android.content.DialogInterface;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class iua implements DialogInterface.OnShowListener {
  public iua(HomeActivity paramHomeActivity, AlertDialog paramAlertDialog) {}
  
  public void onShow(DialogInterface paramDialogInterface) {
    this.a.getButton(-1).setTextColor(this.b.getResources().getColor(2131624002));
    this.a.getButton(-2).setTextColor(this.b.getResources().getColor(2131624002));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */