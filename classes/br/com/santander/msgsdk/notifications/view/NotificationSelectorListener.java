package br.com.santander.msgsdk.notifications.view;

import br.com.santander.msgsdk.customView.SwipeLayout;

public interface NotificationSelectorListener {
  void onClickDeleteMessage(int paramInt, SwipeLayout paramSwipeLayout);
  
  void onClickNotification(int paramInt);
  
  void onClickTimerNotification(int paramInt);
  
  void onClickUnreadMessage(int paramInt, SwipeLayout paramSwipeLayout);
  
  void onSwipeNotification(SwipeLayout paramSwipeLayout, int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationSelectorListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */