package android.support.v7.app;

import android.app.Notification;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat;
import android.widget.RemoteViews;

class NotificationCompat$LollipopExtender extends NotificationCompat.BuilderExtender {
  public Notification build(NotificationCompat.Builder paramBuilder, NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor) {
    RemoteViews remoteViews = NotificationCompat.access$600(paramNotificationBuilderWithBuilderAccessor, paramBuilder);
    Notification notification = paramNotificationBuilderWithBuilderAccessor.build();
    if (remoteViews != null)
      notification.contentView = remoteViews; 
    NotificationCompat.access$700(notification, paramBuilder);
    NotificationCompat.access$800(notification, paramBuilder);
    return notification;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\NotificationCompat$LollipopExtender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */