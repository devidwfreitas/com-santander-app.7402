package br.com.santander.msgsdk.notifications.model;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import java.util.ArrayList;
import java.util.List;

public class ProviderNotification implements ProviderNotificationInterface {
  private static final String TAG = ProviderNotification.class.getName();
  
  private NotificationDetail notificationDetail = new NotificationDetail();
  
  private List<NotificationDetail> notificationDetailList = new ArrayList<NotificationDetail>();
  
  private ProviderNotificationReceiverInterface providerNotificationReceiverInterface;
  
  public ProviderNotification(ProviderNotificationReceiverInterface paramProviderNotificationReceiverInterface) {
    this.providerNotificationReceiverInterface = paramProviderNotificationReceiverInterface;
  }
  
  public void getNotifications() {
    MSGSDK.getInstance().requestNotifications(MSGSDK.getInstance().getAppId(), new ProviderNotification$1(this));
  }
  
  public void updateStatusReadOrDelete(int paramInt, NotificationDetail paramNotificationDetail) {
    Log.d(TAG, "updateStatusReadOrDelete - read: " + paramNotificationDetail.isStatusRead());
    Log.d(TAG, "updateStatusReadOrDelete - delete: " + paramNotificationDetail.isStatusExcluded());
    MSGSDK.getInstance().requestUpdateStatusReadOrDelete(paramNotificationDetail.getUuid(), paramNotificationDetail.getTimestamp(), paramNotificationDetail.isStatusRead(), paramNotificationDetail.isStatusExcluded(), new ProviderNotification$2(this, paramInt, paramNotificationDetail));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\model\ProviderNotification.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */