package android.support.v7.app;

import android.app.Notification;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat;

class NotificationCompat$Api24Extender extends NotificationCompat.BuilderExtender {
  private NotificationCompat$Api24Extender() {}
  
  public Notification build(NotificationCompat.Builder paramBuilder, NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor) {
    NotificationCompat.access$900(paramNotificationBuilderWithBuilderAccessor, paramBuilder);
    return paramNotificationBuilderWithBuilderAccessor.build();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\NotificationCompat$Api24Extender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */