package br.com.santander.msgsdk.notifications.viewModel;

import br.com.santander.msgsdk.notifications.model.NotificationDetail;
import br.com.santander.msgsdk.notifications.model.ProviderNotification;
import br.com.santander.msgsdk.notifications.model.ProviderNotificationReceiverInterface;
import java.util.List;

public class NotificationViewModel implements ProviderNotificationReceiverInterface, NotificationViewModelInterface {
  private String TAG_LOG = NotificationViewModel.class.getName();
  
  private List<NotificationDetail> notificationDetailList;
  
  private NotificationViewModelReceiverInterface notificationViewModelReceiverInterface;
  
  private ProviderNotification providerNotification = new ProviderNotification(this);
  
  public NotificationViewModel(NotificationViewModelReceiverInterface paramNotificationViewModelReceiverInterface) {
    this.notificationViewModelReceiverInterface = paramNotificationViewModelReceiverInterface;
  }
  
  public void getNotifications() {
    this.providerNotification.getNotifications();
  }
  
  public void getNotificationsResult(List<NotificationDetail> paramList, Error paramError) {
    if (paramError == null) {
      this.notificationDetailList = paramList;
      this.notificationViewModelReceiverInterface.getNotificationsResult(paramList, null);
      return;
    } 
    this.notificationViewModelReceiverInterface.getNotificationsResult(null, paramError);
  }
  
  public void setUpdateStatusReadOrDelete(int paramInt, NotificationDetail paramNotificationDetail) {
    this.providerNotification.updateStatusReadOrDelete(paramInt, paramNotificationDetail);
  }
  
  public void updateStatusDeleteResult(int paramInt, Error paramError) {
    if (paramError == null) {
      this.notificationViewModelReceiverInterface.updateStatusDeleteResult(paramInt, null);
      return;
    } 
    this.notificationViewModelReceiverInterface.updateStatusDeleteResult(paramInt, paramError);
  }
  
  public void updateStatusReadResult(int paramInt, Error paramError) {
    if (paramError == null) {
      this.notificationViewModelReceiverInterface.updateStatusReadResult(paramInt, null);
      return;
    } 
    this.notificationViewModelReceiverInterface.updateStatusReadResult(paramInt, paramError);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\viewModel\NotificationViewModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */