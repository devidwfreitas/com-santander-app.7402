package br.com.santander.msgsdk.notifications;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import br.com.santander.msgsdk.notifications.model.NotificationDetail;
import br.com.santander.msgsdk.util.Preferences;
import java.util.Iterator;
import java.util.List;

public class UnreadMessagesUtils {
  public static void clearBadgeNumber(Context paramContext) {
    Preferences.setUnreadNotifications(paramContext, 0);
    sendBroadcastMSG(paramContext, 0);
  }
  
  public static int countUnreadNotification(Context paramContext, List<NotificationDetail> paramList) {
    byte b = 0;
    int i = b;
    if (paramList != null) {
      i = b;
      if (paramList.size() > 0) {
        Iterator<NotificationDetail> iterator = paramList.iterator();
        i = 0;
        while (iterator.hasNext()) {
          if (!((NotificationDetail)iterator.next()).isStatusRead())
            i++; 
        } 
      } 
    } 
    Preferences.setUnreadNotifications(paramContext, i);
    Log.d("UnreadMessagesUtils", "unread: " + i);
    sendBroadcastMSG(paramContext, i);
    return i;
  }
  
  public static int getUnreadNotificationsNumber(Context paramContext) {
    int i = Preferences.getUnreadNotifications(paramContext);
    sendBroadcastMSG(paramContext, i);
    return i;
  }
  
  public static void sendBroadcastMSG(Context paramContext, int paramInt) {
    Intent intent = new Intent();
    intent.putExtra("badgeNumber", paramInt);
    intent.setAction("br.com.santander.msgsdk.NOTIFICATIONS_COUNT");
    paramContext.sendBroadcast(intent);
  }
  
  public static void setReadNotification(Context paramContext) {
    int i = Preferences.getUnreadNotifications(paramContext) - 1;
    Preferences.setUnreadNotifications(paramContext, i);
    sendBroadcastMSG(paramContext, i);
  }
  
  public static void setUnreadNotification(Context paramContext) {
    int i = Preferences.getUnreadNotifications(paramContext) + 1;
    Preferences.setUnreadNotifications(paramContext, i);
    sendBroadcastMSG(paramContext, i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\UnreadMessagesUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */