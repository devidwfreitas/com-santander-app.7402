package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;

class NotificationCompat$NotificationCompatImplBase implements NotificationCompat$NotificationCompatImpl {
  public Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender) {
    Notification notification = NotificationCompatBase.add(paramNotificationCompat$Builder.mNotification, paramNotificationCompat$Builder.mContext, paramNotificationCompat$Builder.resolveTitle(), paramNotificationCompat$Builder.resolveText(), paramNotificationCompat$Builder.mContentIntent, paramNotificationCompat$Builder.mFullScreenIntent);
    if (paramNotificationCompat$Builder.mPriority > 0)
      notification.flags |= 0x80; 
    if (paramNotificationCompat$Builder.mContentView != null)
      notification.contentView = paramNotificationCompat$Builder.mContentView; 
    return notification;
  }
  
  public NotificationCompat$Action getAction(Notification paramNotification, int paramInt) {
    return null;
  }
  
  public int getActionCount(Notification paramNotification) {
    return 0;
  }
  
  public NotificationCompat$Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList) {
    return null;
  }
  
  public Bundle getBundleForUnreadConversation(NotificationCompatBase$UnreadConversation paramNotificationCompatBase$UnreadConversation) {
    return null;
  }
  
  public String getCategory(Notification paramNotification) {
    return null;
  }
  
  public Bundle getExtras(Notification paramNotification) {
    return null;
  }
  
  public String getGroup(Notification paramNotification) {
    return null;
  }
  
  public boolean getLocalOnly(Notification paramNotification) {
    return false;
  }
  
  public ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat$Action[] paramArrayOfNotificationCompat$Action) {
    return null;
  }
  
  public String getSortKey(Notification paramNotification) {
    return null;
  }
  
  public NotificationCompatBase$UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase$UnreadConversation$Factory paramNotificationCompatBase$UnreadConversation$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    return null;
  }
  
  public boolean isGroupSummary(Notification paramNotification) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */