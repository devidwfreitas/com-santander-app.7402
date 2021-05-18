package br.com.santander.msgsdk.notifications.view;

import android.content.DialogInterface;
import br.com.santander.msgsdk.MSGSDK;

class NotificationDetailActivity$3$2 implements DialogInterface.OnClickListener {
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().notificationDetailedPopUpOptionCancel(); 
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationDetailActivity$3$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */