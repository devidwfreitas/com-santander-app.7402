import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;

class lpi implements DialogInterface.OnShowListener {
  lpi(loz paramloz, AlertDialog paramAlertDialog, Context paramContext) {}
  
  public void onShow(DialogInterface paramDialogInterface) {
    this.a.getButton(-1).setTextColor(ContextCompat.getColor(this.b, 2131623961));
    this.a.getButton(-2).setTextColor(ContextCompat.getColor(this.b, 2131623961));
    this.a.getButton(-3).setTextColor(ContextCompat.getColor(this.b, 2131623961));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */