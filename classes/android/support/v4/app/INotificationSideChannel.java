package android.support.v4.app;

import android.app.Notification;
import android.os.IInterface;

public interface INotificationSideChannel extends IInterface {
  void cancel(String paramString1, int paramInt, String paramString2);
  
  void cancelAll(String paramString);
  
  void notify(String paramString1, int paramInt, String paramString2, Notification paramNotification);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\INotificationSideChannel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */