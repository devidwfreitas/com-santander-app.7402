package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;

class NotificationCompat$NotificationCompatImplApi21 extends NotificationCompat$NotificationCompatImplApi20 {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    NotificationCompatApi21$Builder notificationCompatApi21$Builder = new NotificationCompatApi21$Builder(paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.resolveTitle(), paramNotificationCompat$Builder.resolveText(), paramNotificationCompat$Builder.mContentInfo, paramNotificationCompat$Builder.mTickerView, paramNotificationCompat$Builder.mNumber, paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent, paramNotificationCompat$Builder.mLargeIcon, paramNotificationCompat$Builder.mProgressMax, paramNotificationCompat$Builder.mProgress, paramNotificationCompat$Builder.mProgressIndeterminate, paramNotificationCompat$Builder.mShowWhen, paramNotificationCompat$Builder.mUseChronometer, paramNotificationCompat$Builder.mPriority, paramNotificationCompat$Builder.mSubText, paramNotificationCompat$Builder.mLocalOnly, paramNotificationCompat$Builder.mCategory, paramNotificationCompat$Builder.mPeople, paramNotificationCompat$Builder.mExtras, paramNotificationCompat$Builder.mColor, paramNotificationCompat$Builder.mVisibility, paramNotificationCompat$Builder.mPublicVersion, paramNotificationCompat$Builder.mGroupKey, paramNotificationCompat$Builder.mGroupSummary, paramNotificationCompat$Builder.mSortKey, paramNotificationCompat$Builder.mContentView, paramNotificationCompat$Builder.mBigContentView, paramNotificationCompat$Builder.mHeadsUpContentView);
    NotificationCompat.addActionsToBuilder(notificationCompatApi21$Builder, paramNotificationCompat$Builder.mActions);
    NotificationCompat.addStyleToBuilderJellybean(notificationCompatApi21$Builder, paramNotificationCompat$Builder.mStyle);
    Notification notification = paramNotificationCompat$BuilderExtender.build(paramNotificationCompat$Builder, notificationCompatApi21$Builder);
    if (paramNotificationCompat$Builder.mStyle != null)
      paramNotificationCompat$Builder.mStyle.addCompatExtras(getExtras(notification)); 
    return notification;
  }
  
  public Bundle getBundleForUnreadConversation(NotificationCompatBase$UnreadConversation paramNotificationCompatBase$UnreadConversation) {
    return NotificationCompatApi21.getBundleForUnreadConversation(paramNotificationCompatBase$UnreadConversation);
  }
  
  public String getCategory(Notification paramNotification) {
    return NotificationCompatApi21.getCategory(paramNotification);
  }
  
  public NotificationCompatBase$UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase$UnreadConversation$Factory paramNotificationCompatBase$UnreadConversation$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    return NotificationCompatApi21.getUnreadConversationFromBundle(paramBundle, paramNotificationCompatBase$UnreadConversation$Factory, paramRemoteInputCompatBase$RemoteInput$Factory);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */