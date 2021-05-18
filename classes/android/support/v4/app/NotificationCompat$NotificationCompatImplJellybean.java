package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;

class NotificationCompat$NotificationCompatImplJellybean extends NotificationCompat$NotificationCompatImplBase {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    NotificationCompatJellybean$Builder notificationCompatJellybean$Builder = new NotificationCompatJellybean$Builder(paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.resolveTitle(), paramNotificationCompat$Builder.resolveText(), paramNotificationCompat$Builder.mContentInfo, paramNotificationCompat$Builder.mTickerView, paramNotificationCompat$Builder.mNumber, paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent, paramNotificationCompat$Builder.mLargeIcon, paramNotificationCompat$Builder.mProgressMax, paramNotificationCompat$Builder.mProgress, paramNotificationCompat$Builder.mProgressIndeterminate, paramNotificationCompat$Builder.mUseChronometer, paramNotificationCompat$Builder.mPriority, paramNotificationCompat$Builder.mSubText, paramNotificationCompat$Builder.mLocalOnly, paramNotificationCompat$Builder.mExtras, paramNotificationCompat$Builder.mGroupKey, paramNotificationCompat$Builder.mGroupSummary, paramNotificationCompat$Builder.mSortKey, paramNotificationCompat$Builder.mContentView, paramNotificationCompat$Builder.mBigContentView);
    NotificationCompat.addActionsToBuilder(notificationCompatJellybean$Builder, paramNotificationCompat$Builder.mActions);
    NotificationCompat.addStyleToBuilderJellybean(notificationCompatJellybean$Builder, paramNotificationCompat$Builder.mStyle);
    Notification notification = paramNotificationCompat$BuilderExtender.build(paramNotificationCompat$Builder, notificationCompatJellybean$Builder);
    if (paramNotificationCompat$Builder.mStyle != null) {
      Bundle bundle = getExtras(notification);
      if (bundle != null)
        paramNotificationCompat$Builder.mStyle.addCompatExtras(bundle); 
    } 
    return notification;
  }
  
  public NotificationCompat$Action getAction(Notification paramNotification, int paramInt) {
    return (NotificationCompat$Action)NotificationCompatJellybean.getAction(paramNotification, paramInt, NotificationCompat$Action.FACTORY, RemoteInput.FACTORY);
  }
  
  public int getActionCount(Notification paramNotification) {
    return NotificationCompatJellybean.getActionCount(paramNotification);
  }
  
  public NotificationCompat$Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList) {
    return (NotificationCompat$Action[])NotificationCompatJellybean.getActionsFromParcelableArrayList(paramArrayList, NotificationCompat$Action.FACTORY, RemoteInput.FACTORY);
  }
  
  public Bundle getExtras(Notification paramNotification) {
    return NotificationCompatJellybean.getExtras(paramNotification);
  }
  
  public String getGroup(Notification paramNotification) {
    return NotificationCompatJellybean.getGroup(paramNotification);
  }
  
  public boolean getLocalOnly(Notification paramNotification) {
    return NotificationCompatJellybean.getLocalOnly(paramNotification);
  }
  
  public ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat$Action[] paramArrayOfNotificationCompat$Action) {
    return NotificationCompatJellybean.getParcelableArrayListForActions((NotificationCompatBase$Action[])paramArrayOfNotificationCompat$Action);
  }
  
  public String getSortKey(Notification paramNotification) {
    return NotificationCompatJellybean.getSortKey(paramNotification);
  }
  
  public boolean isGroupSummary(Notification paramNotification) {
    return NotificationCompatJellybean.isGroupSummary(paramNotification);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplJellybean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */