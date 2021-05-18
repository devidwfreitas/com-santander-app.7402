package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

public abstract class NotificationCompatBase$Action {
  public abstract PendingIntent getActionIntent();
  
  public abstract boolean getAllowGeneratedReplies();
  
  public abstract Bundle getExtras();
  
  public abstract int getIcon();
  
  public abstract RemoteInputCompatBase$RemoteInput[] getRemoteInputs();
  
  public abstract CharSequence getTitle();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatBase$Action.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */