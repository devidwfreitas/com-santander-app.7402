package br.com.santander.msgsdk;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import br.com.santander.msgsdk.domain.InterAcao;
import br.com.santander.msgsdk.domain.NotificationData;
import br.com.santander.msgsdk.util.Constants;
import br.com.santander.msgsdk.util.NotificationActionRouter;
import java.util.List;

class Notification {
  private static final String TAG = Notification.class.getSimpleName();
  
  private static PendingIntent getDefaultPendingIntent(Context paramContext, int paramInt, String paramString) {
    Intent intent = new Intent(paramContext, NotificationActionRouter.class);
    intent.putExtra("msg_noti_id", paramInt);
    intent.putExtra("msg_push_id", paramString);
    intent.setFlags(603979776);
    return PendingIntent.getActivity(paramContext, paramInt, intent, 0);
  }
  
  private static PendingIntent getDeleteNotificationIntent(Context paramContext, int paramInt, String paramString1, String paramString2) {
    Intent intent = new Intent(paramContext, NotificationActionRouter.class);
    intent.putExtra("msg_noti_del", true);
    intent.putExtra("msg_noti_id", paramInt);
    intent.putExtra("msg_push_id", paramString1);
    intent.putExtra("msg_push_uuid", paramString2);
    return PendingIntent.getActivity(paramContext, paramInt, intent, 1073741824);
  }
  
  private static PendingIntent getPendingIntent(Context paramContext, NotificationData paramNotificationData, NotificationCompat.Builder paramBuilder, int paramInt) {
    Intent intent;
    int i;
    String str = paramNotificationData.getMsgPushId();
    if (str != null && !"".equals(str)) {
      try {
        Intent intent1;
        i = Integer.parseInt(paramNotificationData.getMsgPushId());
        switch (i) {
          default:
            intent = new Intent(paramContext, NotificationActionRouter.class);
            intent.putExtra("msg_noti_id", Constants.EMPTY);
            intent.putExtra("msg_push_id", Constants.EMPTY);
            intent.putExtra("msg_noti_intent_type", Constants.EMPTY);
            intent.putExtra("msg_noti_stimulum_id", Constants.EMPTY);
            intent.putExtra("msg_noti_intent_extra", Constants.EMPTY);
            intent.putExtra("msg_push_uuid", Constants.EMPTY);
            return PendingIntent.getActivity(paramContext, paramInt, intent, 134217728);
          case 1:
          case 2:
            intent1 = new Intent(paramContext, NotificationActionRouter.class);
            intent1.putExtra("msg_noti_id", paramInt);
            intent1.putExtra("msg_push_id", intent.getPushId());
            intent1.putExtra("msg_noti_intent_type", i);
            intent1.putExtra("msg_noti_stimulum_id", intent.getStimulumId());
            intent1.putExtra("msg_noti_intent_extra", intent.getMsgPushValue());
            intent1.putExtra("msg_push_uuid", intent.getUuid());
            return PendingIntent.getActivity(paramContext, paramInt, intent1, 134217728);
          case 3:
            break;
        } 
      } catch (Exception exception) {
        Log.e(TAG, exception.getMessage(), exception);
        return getDefaultPendingIntent(paramContext, paramInt, intent.getPushId());
      } 
    } else {
      return getDefaultPendingIntent(paramContext, paramInt, intent.getPushId());
    } 
    List<InterAcao> list = intent.getInterAcaoList();
    if (list != null)
      for (int j = 0; j < list.size(); j++) {
        int k;
        InterAcao interAcao = list.get(j);
        Intent intent1 = new Intent(paramContext, NotificationActionRouter.class);
        intent1.putExtra("msg_noti_id", paramInt);
        intent1.putExtra("msg_push_id", intent.getPushId());
        intent1.putExtra("msg_noti_intent_type", i);
        intent1.putExtra("msg_noti_stimulum_id", intent.getStimulumId());
        intent1.putExtra("msg_noti_intent_extra", interAcao.getValue());
        intent1.putExtra("msg_push_uuid", intent.getUuid());
        PendingIntent pendingIntent = PendingIntent.getActivity(paramContext, paramInt + j, intent1, 134217728);
        if (interAcao.getIcon() != -1) {
          k = interAcao.getIcon();
        } else {
          k = R$drawable.upx;
        } 
        exception.addAction(new NotificationCompat.Action(k, interAcao.getTitle(), pendingIntent));
      }  
    return null;
  }
  
  public static void sendNotification(Context paramContext, NotificationData paramNotificationData) {
    String str1 = paramNotificationData.getTitle();
    String str2 = paramNotificationData.getMessage();
    String str3 = paramNotificationData.getPushId();
    String str4 = paramNotificationData.getUuid();
    int i = Integer.MAX_VALUE - (int)System.currentTimeMillis();
    if (i <= 0)
      i *= -1; 
    NotificationCompat.Builder builder = (new NotificationCompat.Builder(paramContext)).setSmallIcon(R$drawable.ic_notification).setColor(ContextCompat.getColor(paramContext, R$color.notification_color)).setContentTitle(str1).setStyle((NotificationCompat.Style)(new NotificationCompat.BigTextStyle()).bigText(str2)).setVibrate(new long[] { 100L, 500L }).setContentText(str2).setDeleteIntent(getDeleteNotificationIntent(paramContext, i, str3, str4)).setAutoCancel(true);
    if (Build.VERSION.SDK_INT >= 16)
      builder.setPriority(1); 
    builder.setContentIntent(getPendingIntent(paramContext, paramNotificationData, builder, i));
    builder.setPriority(2);
    builder.setWhen(0L);
    ((NotificationManager)paramContext.getSystemService("notification")).notify(paramNotificationData.getPushId(), i, builder.build());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\Notification.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */