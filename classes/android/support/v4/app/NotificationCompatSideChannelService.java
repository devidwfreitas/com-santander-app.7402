package android.support.v4.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;

public abstract class NotificationCompatSideChannelService extends Service {
  public abstract void cancel(String paramString1, int paramInt, String paramString2);
  
  public abstract void cancelAll(String paramString);
  
  void checkPermission(int paramInt, String paramString) {
    String[] arrayOfString = getPackageManager().getPackagesForUid(paramInt);
    int j = arrayOfString.length;
    for (int i = 0; i < j; i++) {
      if (arrayOfString[i].equals(paramString))
        return; 
    } 
    throw new SecurityException("NotificationSideChannelService: Uid " + paramInt + " is not authorized for package " + paramString);
  }
  
  public abstract void notify(String paramString1, int paramInt, String paramString2, Notification paramNotification);
  
  public IBinder onBind(Intent paramIntent) {
    return (IBinder)((!paramIntent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL") || Build.VERSION.SDK_INT > 19) ? null : new NotificationCompatSideChannelService$NotificationSideChannelStub(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatSideChannelService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */