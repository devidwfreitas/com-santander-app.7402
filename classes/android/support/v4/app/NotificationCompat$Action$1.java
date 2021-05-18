package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

final class NotificationCompat$Action$1 implements NotificationCompatBase$Action$Factory {
  public NotificationCompatBase$Action build(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInputCompatBase$RemoteInput[] paramArrayOfRemoteInputCompatBase$RemoteInput, boolean paramBoolean) {
    return new NotificationCompat$Action(paramInt, paramCharSequence, paramPendingIntent, paramBundle, (RemoteInput[])paramArrayOfRemoteInputCompatBase$RemoteInput, paramBoolean);
  }
  
  public NotificationCompat$Action[] newArray(int paramInt) {
    return new NotificationCompat$Action[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$Action$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */