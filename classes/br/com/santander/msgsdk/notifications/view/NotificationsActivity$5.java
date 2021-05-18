package br.com.santander.msgsdk.notifications.view;

import android.content.DialogInterface;
import android.view.KeyEvent;

class NotificationsActivity$5 implements DialogInterface.OnKeyListener {
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4) {
      NotificationsActivity.this.finish();
      NotificationsActivity.access$200(NotificationsActivity.this).dismiss();
      NotificationsActivity.this.onBackPressed();
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationsActivity$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */