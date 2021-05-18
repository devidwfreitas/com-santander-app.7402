package android.support.v4.app;

import android.app.Notification;

class NotificationManagerCompat$NotifyTask implements NotificationManagerCompat$Task {
  final int id;
  
  final Notification notif;
  
  final String packageName;
  
  final String tag;
  
  public NotificationManagerCompat$NotifyTask(String paramString1, int paramInt, String paramString2, Notification paramNotification) {
    this.packageName = paramString1;
    this.id = paramInt;
    this.tag = paramString2;
    this.notif = paramNotification;
  }
  
  public void send(INotificationSideChannel paramINotificationSideChannel) {
    paramINotificationSideChannel.notify(this.packageName, this.id, this.tag, this.notif);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("NotifyTask[");
    stringBuilder.append("packageName:").append(this.packageName);
    stringBuilder.append(", id:").append(this.id);
    stringBuilder.append(", tag:").append(this.tag);
    stringBuilder.append("]");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat$NotifyTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */