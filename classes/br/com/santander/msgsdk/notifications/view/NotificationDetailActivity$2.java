package br.com.santander.msgsdk.notifications.view;

import android.content.Intent;
import android.view.View;
import br.com.santander.msgsdk.MSGSDK;

class NotificationDetailActivity$2 implements View.OnClickListener {
  public void onClick(View paramView) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().notificationDetailedPopUpOptionUnread(); 
    Intent intent = new Intent();
    intent.putExtra("position", NotificationDetailActivity.access$100(NotificationDetailActivity.this));
    NotificationDetailActivity.this.setResult(-1, intent);
    NotificationDetailActivity.access$000(NotificationDetailActivity.this).dismiss();
    NotificationDetailActivity.this.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationDetailActivity$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */