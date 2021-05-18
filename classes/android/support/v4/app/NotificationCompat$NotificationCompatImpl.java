package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;

interface NotificationCompat$NotificationCompatImpl {
  Notification build(NotificationCompat$Builder paramNotificationCompat$Builder, NotificationCompat$BuilderExtender paramNotificationCompat$BuilderExtender);
  
  NotificationCompat$Action getAction(Notification paramNotification, int paramInt);
  
  int getActionCount(Notification paramNotification);
  
  NotificationCompat$Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList);
  
  Bundle getBundleForUnreadConversation(NotificationCompatBase$UnreadConversation paramNotificationCompatBase$UnreadConversation);
  
  String getCategory(Notification paramNotification);
  
  Bundle getExtras(Notification paramNotification);
  
  String getGroup(Notification paramNotification);
  
  boolean getLocalOnly(Notification paramNotification);
  
  ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat$Action[] paramArrayOfNotificationCompat$Action);
  
  String getSortKey(Notification paramNotification);
  
  NotificationCompatBase$UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase$UnreadConversation$Factory paramNotificationCompatBase$UnreadConversation$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory);
  
  boolean isGroupSummary(Notification paramNotification);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$NotificationCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */