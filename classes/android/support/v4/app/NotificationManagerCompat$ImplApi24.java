package android.support.v4.app;

import android.app.NotificationManager;
import android.content.Context;

class NotificationManagerCompat$ImplApi24 extends NotificationManagerCompat$ImplKitKat {
  public boolean areNotificationsEnabled(Context paramContext, NotificationManager paramNotificationManager) {
    return NotificationManagerCompatApi24.areNotificationsEnabled(paramNotificationManager);
  }
  
  public int getImportance(NotificationManager paramNotificationManager) {
    return NotificationManagerCompatApi24.getImportance(paramNotificationManager);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat$ImplApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */