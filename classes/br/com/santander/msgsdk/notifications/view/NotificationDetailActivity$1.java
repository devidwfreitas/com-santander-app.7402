package br.com.santander.msgsdk.notifications.view;

import android.view.View;
import br.com.santander.msgsdk.MSGSDK;

class NotificationDetailActivity$1 implements View.OnClickListener {
  public void onClick(View paramView) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().notificationDetailedPopUpOptionCancel(); 
    NotificationDetailActivity.access$000(NotificationDetailActivity.this).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationDetailActivity$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */