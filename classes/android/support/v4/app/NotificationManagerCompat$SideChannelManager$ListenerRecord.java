package android.support.v4.app;

import android.content.ComponentName;
import java.util.LinkedList;

class NotificationManagerCompat$SideChannelManager$ListenerRecord {
  public boolean bound = false;
  
  public final ComponentName componentName;
  
  public int retryCount = 0;
  
  public INotificationSideChannel service;
  
  public LinkedList<NotificationManagerCompat$Task> taskQueue = new LinkedList<NotificationManagerCompat$Task>();
  
  public NotificationManagerCompat$SideChannelManager$ListenerRecord(ComponentName paramComponentName) {
    this.componentName = paramComponentName;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat$SideChannelManager$ListenerRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */