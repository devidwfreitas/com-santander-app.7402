import android.app.Activity;
import android.content.DialogInterface;
import android.util.Log;

public class myg implements DialogInterface.OnDismissListener {
  private Activity a;
  
  public myg(Activity paramActivity) {
    this.a = paramActivity;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface) {
    try {
      mzq.b(this.a, false);
      return;
    } catch (Exception exception) {
      Log.e("DialogUtil", "DefaultDismissListener", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */