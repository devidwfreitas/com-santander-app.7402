package android.support.v7.app;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class AlertController$ButtonHandler extends Handler {
  private static final int MSG_DISMISS_DIALOG = 1;
  
  private WeakReference<DialogInterface> mDialog;
  
  public AlertController$ButtonHandler(DialogInterface paramDialogInterface) {
    this.mDialog = new WeakReference<DialogInterface>(paramDialogInterface);
  }
  
  public void handleMessage(Message paramMessage) {
    switch (paramMessage.what) {
      default:
        return;
      case -3:
      case -2:
      case -1:
        ((DialogInterface.OnClickListener)paramMessage.obj).onClick(this.mDialog.get(), paramMessage.what);
        return;
      case 1:
        break;
    } 
    ((DialogInterface)paramMessage.obj).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$ButtonHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */