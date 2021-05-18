import android.content.DialogInterface;
import android.view.View;
import com.facebook.login.DeviceAuthDialog;

public class brs implements DialogInterface.OnClickListener {
  public brs(DeviceAuthDialog paramDeviceAuthDialog) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    View view = DeviceAuthDialog.a(this.a, false);
    DeviceAuthDialog.f(this.a).setContentView(view);
    this.a.a(DeviceAuthDialog.g(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */