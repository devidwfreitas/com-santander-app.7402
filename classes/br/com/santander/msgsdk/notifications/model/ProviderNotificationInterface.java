package br.com.santander.msgsdk.notifications.model;

public interface ProviderNotificationInterface {
  void getNotifications();
  
  void updateStatusReadOrDelete(int paramInt, NotificationDetail paramNotificationDetail);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\model\ProviderNotificationInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */