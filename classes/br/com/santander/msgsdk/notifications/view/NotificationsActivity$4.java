package br.com.santander.msgsdk.notifications.view;

import android.content.DialogInterface;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.customView.SwipeLayout;

class NotificationsActivity$4 implements DialogInterface.OnClickListener {
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().swipeNotificationPopUpOptionCancel(); 
    swipeLayout.close(true);
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationsActivity$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */