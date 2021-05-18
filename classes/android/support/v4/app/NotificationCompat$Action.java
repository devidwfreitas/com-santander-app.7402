package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import android.support.annotation.RestrictTo;

public class NotificationCompat$Action extends NotificationCompatBase$Action {
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public static final NotificationCompatBase$Action$Factory FACTORY = new NotificationCompat$Action$1();
  
  public PendingIntent actionIntent;
  
  public int icon;
  
  private boolean mAllowGeneratedReplies;
  
  final Bundle mExtras;
  
  private final RemoteInput[] mRemoteInputs;
  
  public CharSequence title;
  
  public NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent) {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null, true);
  }
  
  NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInput[] paramArrayOfRemoteInput, boolean paramBoolean) {
    this.icon = paramInt;
    this.title = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    this.actionIntent = paramPendingIntent;
    if (paramBundle == null)
      paramBundle = new Bundle(); 
    this.mExtras = paramBundle;
    this.mRemoteInputs = paramArrayOfRemoteInput;
    this.mAllowGeneratedReplies = paramBoolean;
  }
  
  public PendingIntent getActionIntent() {
    return this.actionIntent;
  }
  
  public boolean getAllowGeneratedReplies() {
    return this.mAllowGeneratedReplies;
  }
  
  public Bundle getExtras() {
    return this.mExtras;
  }
  
  public int getIcon() {
    return this.icon;
  }
  
  public RemoteInput[] getRemoteInputs() {
    return this.mRemoteInputs;
  }
  
  public CharSequence getTitle() {
    return this.title;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$Action.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */