import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;

final class hyt implements DialogInterface.OnShowListener {
  hyt(Activity paramActivity) {}
  
  public void onShow(DialogInterface paramDialogInterface) {
    ((AlertDialog)paramDialogInterface).getButton(-2).setTextColor(ContextCompat.getColor((Context)this.a, 2131623961));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hyt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */