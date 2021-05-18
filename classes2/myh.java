import android.app.Activity;
import android.content.DialogInterface;
import android.util.Log;

public class myh implements DialogInterface.OnShowListener {
  private Activity a;
  
  public myh(Activity paramActivity) {
    this.a = paramActivity;
  }
  
  public void onShow(DialogInterface paramDialogInterface) {
    try {
      mzq.a(this.a, false);
      return;
    } catch (Exception exception) {
      Log.e("DialogUtil", "DefaultShowListener", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */