package br.com.santander.msgsdk.gcm;

import android.content.Context;
import android.os.Bundle;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.domain.NotificationData;
import br.com.santander.msgsdk.notifications.UnreadMessagesUtils;
import cyw;

public class GcmService extends cyw {
  public String lastPushId;
  
  public void onMessageReceived(String paramString, Bundle paramBundle) {
    NotificationData notificationData = new NotificationData(paramBundle);
    if (this.lastPushId != null && this.lastPushId.equals(notificationData.getPushId()))
      return; 
    this.lastPushId = notificationData.getPushId();
    MSGSDK mSGSDK = (MSGSDK)MSGSDK.getInstance();
    if (mSGSDK.getInternalNotificationListener() != null) {
      mSGSDK.updateStatusReceived(getApplicationContext(), notificationData);
      mSGSDK.getInternalNotificationListener().onNotificationReceived(notificationData);
    } else {
      mSGSDK.sendNotification((Context)this, notificationData);
      mSGSDK.updateStatusReceived(getApplicationContext(), notificationData);
    } 
    UnreadMessagesUtils.setUnreadNotification(getApplicationContext());
    int i = UnreadMessagesUtils.getUnreadNotificationsNumber(getApplicationContext());
    UnreadMessagesUtils.sendBroadcastMSG(getApplicationContext(), i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\gcm\GcmService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */