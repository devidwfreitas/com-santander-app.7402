package br.com.santander.msgsdk.notifications.view;

import android.content.DialogInterface;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.customView.SwipeLayout;

class NotificationsActivity$3 implements DialogInterface.OnClickListener {
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().swipeNotificationPopUpOptionDelete(); 
    NotificationsActivity.this.updateReadOrDelete(position, true, false);
    swipeLayout.close(true);
    NotificationsActivity.access$100(NotificationsActivity.this).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationsActivity$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */