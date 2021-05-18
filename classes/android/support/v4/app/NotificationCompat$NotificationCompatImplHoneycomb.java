package android.support.v4.app;

import android.app.Notification;

class NotificationCompat$NotificationCompatImplHoneycomb extends NotificationCompat$NotificationCompatImplBase {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    Notification notification = NotificationCompatHoneycomb.add(paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.resolveTitle(), paramNotificationCompat$Builder.resolveText(), paramNotificationCompat$Builder.mContentInfo, paramNotificationCompat$Builder.mTickerView, paramNotificationCompat$Builder.mNumber, paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent, paramNotificationCompat$Builder.mLargeIcon);
    if (paramNotificationCompat$Builder.mContentView != null)
      notification.contentView = paramNotificationCompat$Builder.mContentView; 
    return notification;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplHoneycomb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */