package android.support.v4.app;

class NotificationManagerCompat$CancelTask implements NotificationManagerCompat$Task {
  final boolean all;
  
  final int id;
  
  final String packageName;
  
  final String tag;
  
  public NotificationManagerCompat$CancelTask(String paramString) {
    this.packageName = paramString;
    this.id = 0;
    this.tag = null;
    this.all = true;
  }
  
  public NotificationManagerCompat$CancelTask(String paramString1, int paramInt, String paramString2) {
    this.packageName = paramString1;
    this.id = paramInt;
    this.tag = paramString2;
    this.all = false;
  }
  
  public void send(INotificationSideChannel paramINotificationSideChannel) {
    if (this.all) {
      paramINotificationSideChannel.cancelAll(this.packageName);
      return;
    } 
    paramINotificationSideChannel.cancel(this.packageName, this.id, this.tag);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("CancelTask[");
    stringBuilder.append("packageName:").append(this.packageName);
    stringBuilder.append(", id:").append(this.id);
    stringBuilder.append(", tag:").append(this.tag);
    stringBuilder.append(", all:").append(this.all);
    stringBuilder.append("]");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat$CancelTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */