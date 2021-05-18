package br.com.santander.msgsdk.notifications.view;

import android.content.DialogInterface;

class NotificationRouter$3 implements DialogInterface.OnDismissListener {
  public void onDismiss(DialogInterface paramDialogInterface) {
    paramDialogInterface.dismiss();
    NotificationRouter.this.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationRouter$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */