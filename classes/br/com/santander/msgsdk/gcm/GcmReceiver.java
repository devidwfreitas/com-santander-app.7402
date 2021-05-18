package br.com.santander.msgsdk.gcm;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.domain.NotificationData;
import br.com.santander.msgsdk.notifications.UnreadMessagesUtils;
import com.google.android.gms.gcm.GcmReceiver;

public class GcmReceiver extends GcmReceiver {
  public void onReceive(Context paramContext, Intent paramIntent) {
    super.onReceive(paramContext, paramIntent);
    NotificationData notificationData = new NotificationData(paramIntent.getExtras());
    Log.d("GcmReceiver", "onReceive: Bundle --> " + paramIntent.getExtras());
    ((MSGSDK)MSGSDK.getInstance()).updateStatusReceived(paramContext, notificationData);
    UnreadMessagesUtils.setUnreadNotification(paramContext);
    UnreadMessagesUtils.sendBroadcastMSG(paramContext, UnreadMessagesUtils.getUnreadNotificationsNumber(paramContext));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\gcm\GcmReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */