package android.support.v4.app;

import android.app.Notification;
import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NotificationCompat$BuilderExtender {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor) {
    Notification notification = paramNotificationBuilderWithBuilderAccessor.build();
    if (paramNotificationCompat$Builder.mContentView != null)
      notification.contentView = paramNotificationCompat$Builder.mContentView; 
    return notification;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$BuilderExtender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */