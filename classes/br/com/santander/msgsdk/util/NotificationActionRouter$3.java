package br.com.santander.msgsdk.util;

import android.content.DialogInterface;

class NotificationActionRouter$3 implements DialogInterface.OnDismissListener {
  public void onDismiss(DialogInterface paramDialogInterface) {
    paramDialogInterface.dismiss();
    NotificationActionRouter.this.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\NotificationActionRouter$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */