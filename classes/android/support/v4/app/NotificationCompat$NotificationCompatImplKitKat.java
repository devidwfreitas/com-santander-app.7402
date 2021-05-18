package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;

class NotificationCompat$NotificationCompatImplKitKat extends NotificationCompat$NotificationCompatImplJellybean {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    NotificationCompatKitKat$Builder notificationCompatKitKat$Builder = new NotificationCompatKitKat$Builder(paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.resolveTitle(), paramNotificationCompat$Builder.resolveText(), paramNotificationCompat$Builder.mContentInfo, paramNotificationCompat$Builder.mTickerView, paramNotificationCompat$Builder.mNumber, paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent, paramNotificationCompat$Builder.mLargeIcon, paramNotificationCompat$Builder.mProgressMax, paramNotificationCompat$Builder.mProgress, paramNotificationCompat$Builder.mProgressIndeterminate, paramNotificationCompat$Builder.mShowWhen, paramNotificationCompat$Builder.mUseChronometer, paramNotificationCompat$Builder.mPriority, paramNotificationCompat$Builder.mSubText, paramNotificationCompat$Builder.mLocalOnly, paramNotificationCompat$Builder.mPeople, paramNotificationCompat$Builder.mExtras, paramNotificationCompat$Builder.mGroupKey, paramNotificationCompat$Builder.mGroupSummary, paramNotificationCompat$Builder.mSortKey, paramNotificationCompat$Builder.mContentView, paramNotificationCompat$Builder.mBigContentView);
    NotificationCompat.addActionsToBuilder(notificationCompatKitKat$Builder, paramNotificationCompat$Builder.mActions);
    NotificationCompat.addStyleToBuilderJellybean(notificationCompatKitKat$Builder, paramNotificationCompat$Builder.mStyle);
    return paramNotificationCompat$BuilderExtender.build(paramNotificationCompat$Builder, notificationCompatKitKat$Builder);
  }
  
  public NotificationCompat$Action getAction(Notification paramNotification, int paramInt) {
    return (NotificationCompat$Action)NotificationCompatKitKat.getAction(paramNotification, paramInt, NotificationCompat$Action.FACTORY, RemoteInput.FACTORY);
  }
  
  public int getActionCount(Notification paramNotification) {
    return NotificationCompatKitKat.getActionCount(paramNotification);
  }
  
  public Bundle getExtras(Notification paramNotification) {
    return NotificationCompatKitKat.getExtras(paramNotification);
  }
  
  public String getGroup(Notification paramNotification) {
    return NotificationCompatKitKat.getGroup(paramNotification);
  }
  
  public boolean getLocalOnly(Notification paramNotification) {
    return NotificationCompatKitKat.getLocalOnly(paramNotification);
  }
  
  public String getSortKey(Notification paramNotification) {
    return NotificationCompatKitKat.getSortKey(paramNotification);
  }
  
  public boolean isGroupSummary(Notification paramNotification) {
    return NotificationCompatKitKat.isGroupSummary(paramNotification);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */