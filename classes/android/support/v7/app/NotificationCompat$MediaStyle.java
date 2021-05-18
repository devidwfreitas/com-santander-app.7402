package android.support.v7.app;

import android.app.PendingIntent;
import android.support.v4.app.NotificationCompat;
import android.support.v4.media.session.MediaSessionCompat;

public class NotificationCompat$MediaStyle extends NotificationCompat.Style {
  int[] mActionsToShowInCompact = null;
  
  PendingIntent mCancelButtonIntent;
  
  boolean mShowCancelButton;
  
  MediaSessionCompat.Token mToken;
  
  public NotificationCompat$MediaStyle() {}
  
  public NotificationCompat$MediaStyle(NotificationCompat.Builder paramBuilder) {
    setBuilder(paramBuilder);
  }
  
  public NotificationCompat$MediaStyle setCancelButtonIntent(PendingIntent paramPendingIntent) {
    this.mCancelButtonIntent = paramPendingIntent;
    return this;
  }
  
  public NotificationCompat$MediaStyle setMediaSession(MediaSessionCompat.Token paramToken) {
    this.mToken = paramToken;
    return this;
  }
  
  public NotificationCompat$MediaStyle setShowActionsInCompactView(int... paramVarArgs) {
    this.mActionsToShowInCompact = paramVarArgs;
    return this;
  }
  
  public NotificationCompat$MediaStyle setShowCancelButton(boolean paramBoolean) {
    this.mShowCancelButton = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\NotificationCompat$MediaStyle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */