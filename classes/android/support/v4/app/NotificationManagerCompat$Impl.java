package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;

interface NotificationManagerCompat$Impl {
  boolean areNotificationsEnabled(Context paramContext, NotificationManager paramNotificationManager);
  
  void cancelNotification(NotificationManager paramNotificationManager, String paramString, int paramInt);
  
  int getImportance(NotificationManager paramNotificationManager);
  
  int getSideChannelBindFlags();
  
  void postNotification(NotificationManager paramNotificationManager, String paramString, int paramInt, Notification paramNotification);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat$Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */