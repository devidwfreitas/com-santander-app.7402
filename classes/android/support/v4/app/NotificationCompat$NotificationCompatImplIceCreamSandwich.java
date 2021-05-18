package android.support.v4.app;

import android.app.Notification;

class NotificationCompat$NotificationCompatImplIceCreamSandwich extends NotificationCompat$NotificationCompatImplBase {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    return paramNotificationCompat$BuilderExtender.build(paramNotificationCompat$Builder, new NotificationCompatIceCreamSandwich$Builder(paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.resolveTitle(), paramNotificationCompat$Builder.resolveText(), paramNotificationCompat$Builder.mContentInfo, paramNotificationCompat$Builder.mTickerView, paramNotificationCompat$Builder.mNumber, paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent, paramNotificationCompat$Builder.mLargeIcon, paramNotificationCompat$Builder.mProgressMax, paramNotificationCompat$Builder.mProgress, paramNotificationCompat$Builder.mProgressIndeterminate));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplIceCreamSandwich.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */