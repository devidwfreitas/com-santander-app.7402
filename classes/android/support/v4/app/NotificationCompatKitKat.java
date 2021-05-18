package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.util.SparseArray;

@TargetApi(19)
@RequiresApi(19)
class NotificationCompatKitKat {
  public static NotificationCompatBase$Action getAction(Notification paramNotification, int paramInt, NotificationCompatBase$Action$Factory paramNotificationCompatBase$Action$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    Bundle bundle;
    Notification.Action action = paramNotification.actions[paramInt];
    Notification notification = null;
    SparseArray sparseArray = paramNotification.extras.getSparseParcelableArray("android.support.actionExtras");
    paramNotification = notification;
    if (sparseArray != null)
      bundle = (Bundle)sparseArray.get(paramInt); 
    return NotificationCompatJellybean.readAction(paramNotificationCompatBase$Action$Factory, paramRemoteInputCompatBase$RemoteInput$Factory, action.icon, action.title, action.actionIntent, bundle);
  }
  
  public static int getActionCount(Notification paramNotification) {
    return (paramNotification.actions != null) ? paramNotification.actions.length : 0;
  }
  
  public static Bundle getExtras(Notification paramNotification) {
    return paramNotification.extras;
  }
  
  public static String getGroup(Notification paramNotification) {
    return paramNotification.extras.getString("android.support.groupKey");
  }
  
  public static boolean getLocalOnly(Notification paramNotification) {
    return paramNotification.extras.getBoolean("android.support.localOnly");
  }
  
  public static String getSortKey(Notification paramNotification) {
    return paramNotification.extras.getString("android.support.sortKey");
  }
  
  public static boolean isGroupSummary(Notification paramNotification) {
    return paramNotification.extras.getBoolean("android.support.isGroupSummary");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */