package br.com.santander.msgsdk.notifications.view;

import android.view.View;

class NotificationRouter$2 implements View.OnClickListener {
  public void onClick(View paramView) {
    NotificationRouter.access$000(NotificationRouter.this).dismiss();
    NotificationRouter.this.openDeepLink(url);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationRouter$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */