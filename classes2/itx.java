import android.content.DialogInterface;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class itx implements DialogInterface.OnClickListener {
  public itx(HomeActivity paramHomeActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    HomeActivity.a(this.a).a(paramDialogInterface, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */