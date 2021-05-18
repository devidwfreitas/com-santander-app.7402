package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;

class NotificationManagerCompat$ImplBase implements NotificationManagerCompat$Impl {
  public boolean areNotificationsEnabled(Context paramContext, NotificationManager paramNotificationManager) {
    return true;
  }
  
  public void cancelNotification(NotificationManager paramNotificationManager, String paramString, int paramInt) {
    paramNotificationManager.cancel(paramString, paramInt);
  }
  
  public int getImportance(NotificationManager paramNotificationManager) {
    return -1000;
  }
  
  public int getSideChannelBindFlags() {
    return 1;
  }
  
  public void postNotification(NotificationManager paramNotificationManager, String paramString, int paramInt, Notification paramNotification) {
    paramNotificationManager.notify(paramString, paramInt, paramNotification);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat$ImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */