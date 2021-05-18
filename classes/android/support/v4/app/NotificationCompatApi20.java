package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.RemoteInput;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import java.util.ArrayList;

@TargetApi(20)
@RequiresApi(20)
class NotificationCompatApi20 {
  public static void addAction(Notification.Builder paramBuilder, NotificationCompatBase$Action paramNotificationCompatBase$Action) {
    Bundle bundle;
    Notification.Action.Builder builder = new Notification.Action.Builder(paramNotificationCompatBase$Action.getIcon(), paramNotificationCompatBase$Action.getTitle(), paramNotificationCompatBase$Action.getActionIntent());
    if (paramNotificationCompatBase$Action.getRemoteInputs() != null) {
      RemoteInput[] arrayOfRemoteInput = RemoteInputCompatApi20.fromCompat(paramNotificationCompatBase$Action.getRemoteInputs());
      int j = arrayOfRemoteInput.length;
      for (int i = 0; i < j; i++)
        builder.addRemoteInput(arrayOfRemoteInput[i]); 
    } 
    if (paramNotificationCompatBase$Action.getExtras() != null) {
      bundle = new Bundle(paramNotificationCompatBase$Action.getExtras());
    } else {
      bundle = new Bundle();
    } 
    bundle.putBoolean("android.support.allowGeneratedReplies", paramNotificationCompatBase$Action.getAllowGeneratedReplies());
    builder.addExtras(bundle);
    paramBuilder.addAction(builder.build());
  }
  
  public static NotificationCompatBase$Action getAction(Notification paramNotification, int paramInt, NotificationCompatBase$Action$Factory paramNotificationCompatBase$Action$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    return getActionCompatFromAction(paramNotification.actions[paramInt], paramNotificationCompatBase$Action$Factory, paramRemoteInputCompatBase$RemoteInput$Factory);
  }
  
  private static NotificationCompatBase$Action getActionCompatFromAction(Notification.Action paramAction, NotificationCompatBase$Action$Factory paramNotificationCompatBase$Action$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    RemoteInputCompatBase$RemoteInput[] arrayOfRemoteInputCompatBase$RemoteInput = RemoteInputCompatApi20.toCompat(paramAction.getRemoteInputs(), paramRemoteInputCompatBase$RemoteInput$Factory);
    boolean bool = paramAction.getExtras().getBoolean("android.support.allowGeneratedReplies");
    return paramNotificationCompatBase$Action$Factory.build(paramAction.icon, paramAction.title, paramAction.actionIntent, paramAction.getExtras(), arrayOfRemoteInputCompatBase$RemoteInput, bool);
  }
  
  private static Notification.Action getActionFromActionCompat(NotificationCompatBase$Action paramNotificationCompatBase$Action) {
    Bundle bundle;
    Notification.Action.Builder builder = new Notification.Action.Builder(paramNotificationCompatBase$Action.getIcon(), paramNotificationCompatBase$Action.getTitle(), paramNotificationCompatBase$Action.getActionIntent());
    if (paramNotificationCompatBase$Action.getExtras() != null) {
      bundle = new Bundle(paramNotificationCompatBase$Action.getExtras());
    } else {
      bundle = new Bundle();
    } 
    bundle.putBoolean("android.support.allowGeneratedReplies", paramNotificationCompatBase$Action.getAllowGeneratedReplies());
    builder.addExtras(bundle);
    RemoteInputCompatBase$RemoteInput[] arrayOfRemoteInputCompatBase$RemoteInput = paramNotificationCompatBase$Action.getRemoteInputs();
    if (arrayOfRemoteInputCompatBase$RemoteInput != null) {
      RemoteInput[] arrayOfRemoteInput = RemoteInputCompatApi20.fromCompat(arrayOfRemoteInputCompatBase$RemoteInput);
      int j = arrayOfRemoteInput.length;
      for (int i = 0; i < j; i++)
        builder.addRemoteInput(arrayOfRemoteInput[i]); 
    } 
    return builder.build();
  }
  
  public static NotificationCompatBase$Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList, NotificationCompatBase$Action$Factory paramNotificationCompatBase$Action$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    if (paramArrayList == null)
      return null; 
    NotificationCompatBase$Action[] arrayOfNotificationCompatBase$Action = paramNotificationCompatBase$Action$Factory.newArray(paramArrayList.size());
    for (int i = 0; i < arrayOfNotificationCompatBase$Action.length; i++)
      arrayOfNotificationCompatBase$Action[i] = getActionCompatFromAction((Notification.Action)paramArrayList.get(i), paramNotificationCompatBase$Action$Factory, paramRemoteInputCompatBase$RemoteInput$Factory); 
    return arrayOfNotificationCompatBase$Action;
  }
  
  public static String getGroup(Notification paramNotification) {
    return paramNotification.getGroup();
  }
  
  public static boolean getLocalOnly(Notification paramNotification) {
    return ((paramNotification.flags & 0x100) != 0);
  }
  
  public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase$Action[] paramArrayOfNotificationCompatBase$Action) {
    if (paramArrayOfNotificationCompatBase$Action == null)
      return null; 
    ArrayList<Notification.Action> arrayList = new ArrayList(paramArrayOfNotificationCompatBase$Action.length);
    int j = paramArrayOfNotificationCompatBase$Action.length;
    int i = 0;
    while (true) {
      ArrayList<Notification.Action> arrayList1 = arrayList;
      if (i < j) {
        arrayList.add(getActionFromActionCompat(paramArrayOfNotificationCompatBase$Action[i]));
        i++;
        continue;
      } 
      return (ArrayList)arrayList1;
    } 
  }
  
  public static String getSortKey(Notification paramNotification) {
    return paramNotification.getSortKey();
  }
  
  public static boolean isGroupSummary(Notification paramNotification) {
    return ((paramNotification.flags & 0x200) != 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatApi20.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */