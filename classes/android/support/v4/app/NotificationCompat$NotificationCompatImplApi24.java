package android.support.v4.app;

import android.app.Notification;

class NotificationCompat$NotificationCompatImplApi24 extends NotificationCompat$NotificationCompatImplApi21 {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    NotificationCompatApi24$Builder notificationCompatApi24$Builder = new NotificationCompatApi24$Builder(paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.mContentTitle, paramNotificationCompat$Builder.mContentText, paramNotificationCompat$Builder.mContentInfo, paramNotificationCompat$Builder.mTickerView, paramNotificationCompat$Builder.mNumber, paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent, paramNotificationCompat$Builder.mLargeIcon, paramNotificationCompat$Builder.mProgressMax, paramNotificationCompat$Builder.mProgress, paramNotificationCompat$Builder.mProgressIndeterminate, paramNotificationCompat$Builder.mShowWhen, paramNotificationCompat$Builder.mUseChronometer, paramNotificationCompat$Builder.mPriority, paramNotificationCompat$Builder.mSubText, paramNotificationCompat$Builder.mLocalOnly, paramNotificationCompat$Builder.mCategory, paramNotificationCompat$Builder.mPeople, paramNotificationCompat$Builder.mExtras, paramNotificationCompat$Builder.mColor, paramNotificationCompat$Builder.mVisibility, paramNotificationCompat$Builder.mPublicVersion, paramNotificationCompat$Builder.mGroupKey, paramNotificationCompat$Builder.mGroupSummary, paramNotificationCompat$Builder.mSortKey, paramNotificationCompat$Builder.mRemoteInputHistory, paramNotificationCompat$Builder.mContentView, paramNotificationCompat$Builder.mBigContentView, paramNotificationCompat$Builder.mHeadsUpContentView);
    NotificationCompat.addActionsToBuilder(notificationCompatApi24$Builder, paramNotificationCompat$Builder.mActions);
    NotificationCompat.addStyleToBuilderApi24(notificationCompatApi24$Builder, paramNotificationCompat$Builder.mStyle);
    Notification notification = paramNotificationCompat$BuilderExtender.build(paramNotificationCompat$Builder, notificationCompatApi24$Builder);
    if (paramNotificationCompat$Builder.mStyle != null)
      paramNotificationCompat$Builder.mStyle.addCompatExtras(getExtras(notification)); 
    return notification;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */