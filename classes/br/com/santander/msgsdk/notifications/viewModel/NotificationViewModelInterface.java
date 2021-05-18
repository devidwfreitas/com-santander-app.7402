package br.com.santander.msgsdk.notifications.viewModel;

import br.com.santander.msgsdk.notifications.model.NotificationDetail;

public interface NotificationViewModelInterface {
  void getNotifications();
  
  void setUpdateStatusReadOrDelete(int paramInt, NotificationDetail paramNotificationDetail);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\viewModel\NotificationViewModelInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */