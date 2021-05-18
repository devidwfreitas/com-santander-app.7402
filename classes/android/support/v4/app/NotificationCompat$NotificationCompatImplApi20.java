package android.support.v4.app;

import android.app.Notification;
import android.os.Parcelable;
import java.util.ArrayList;

class NotificationCompat$NotificationCompatImplApi20 extends NotificationCompat$NotificationCompatImplKitKat {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    NotificationCompatApi20$Builder notificationCompatApi20$Builder = new NotificationCompatApi20$Builder(paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.resolveTitle(), paramNotificationCompat$Builder.resolveText(), paramNotificationCompat$Builder.mContentInfo, paramNotificationCompat$Builder.mTickerView, paramNotificationCompat$Builder.mNumber, paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent, paramNotificationCompat$Builder.mLargeIcon, paramNotificationCompat$Builder.mProgressMax, paramNotificationCompat$Builder.mProgress, paramNotificationCompat$Builder.mProgressIndeterminate, paramNotificationCompat$Builder.mShowWhen, paramNotificationCompat$Builder.mUseChronometer, paramNotificationCompat$Builder.mPriority, paramNotificationCompat$Builder.mSubText, paramNotificationCompat$Builder.mLocalOnly, paramNotificationCompat$Builder.mPeople, paramNotificationCompat$Builder.mExtras, paramNotificationCompat$Builder.mGroupKey, paramNotificationCompat$Builder.mGroupSummary, paramNotificationCompat$Builder.mSortKey, paramNotificationCompat$Builder.mContentView, paramNotificationCompat$Builder.mBigContentView);
    NotificationCompat.addActionsToBuilder(notificationCompatApi20$Builder, paramNotificationCompat$Builder.mActions);
    NotificationCompat.addStyleToBuilderJellybean(notificationCompatApi20$Builder, paramNotificationCompat$Builder.mStyle);
    Notification notification = paramNotificationCompat$BuilderExtender.build(paramNotificationCompat$Builder, notificationCompatApi20$Builder);
    if (paramNotificationCompat$Builder.mStyle != null)
      paramNotificationCompat$Builder.mStyle.addCompatExtras(getExtras(notification)); 
    return notification;
  }
  
  public NotificationCompat$Action getAction(Notification paramNotification, int paramInt) {
    return (NotificationCompat$Action)NotificationCompatApi20.getAction(paramNotification, paramInt, NotificationCompat$Action.FACTORY, RemoteInput.FACTORY);
  }
  
  public NotificationCompat$Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList) {
    return (NotificationCompat$Action[])NotificationCompatApi20.getActionsFromParcelableArrayList(paramArrayList, NotificationCompat$Action.FACTORY, RemoteInput.FACTORY);
  }
  
  public String getGroup(Notification paramNotification) {
    return NotificationCompatApi20.getGroup(paramNotification);
  }
  
  public boolean getLocalOnly(Notification paramNotification) {
    return NotificationCompatApi20.getLocalOnly(paramNotification);
  }
  
  public ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat$Action[] paramArrayOfNotificationCompat$Action) {
    return NotificationCompatApi20.getParcelableArrayListForActions((NotificationCompatBase$Action[])paramArrayOfNotificationCompat$Action);
  }
  
  public String getSortKey(Notification paramNotification) {
    return NotificationCompatApi20.getSortKey(paramNotification);
  }
  
  public boolean isGroupSummary(Notification paramNotification) {
    return NotificationCompatApi20.isGroupSummary(paramNotification);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplApi20.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */