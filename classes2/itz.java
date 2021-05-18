import android.content.DialogInterface;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class itz implements DialogInterface.OnClickListener {
  public itz(HomeActivity paramHomeActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    HomeActivity.a(this.a, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */