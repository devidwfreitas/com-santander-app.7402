import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.util.Log;

public abstract class ctq implements DialogInterface.OnClickListener {
  public static ctq a(Activity paramActivity, Intent paramIntent, int paramInt) {
    return new ctr(paramIntent, paramActivity, paramInt);
  }
  
  public static ctq a(@NonNull Fragment paramFragment, Intent paramIntent, int paramInt) {
    return new cts(paramIntent, paramFragment, paramInt);
  }
  
  public static ctq a(@NonNull ddk paramddk, Intent paramIntent, int paramInt) {
    return new ctt(paramIntent, paramddk, paramInt);
  }
  
  protected abstract void a();
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    try {
      a();
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      Log.e("DialogRedirect", "Failed to start resolution intent", (Throwable)activityNotFoundException);
      return;
    } finally {
      paramDialogInterface.dismiss();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */