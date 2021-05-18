package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;

public final class NotificationCompat$Action$Builder {
  private boolean mAllowGeneratedReplies;
  
  private final Bundle mExtras;
  
  private final int mIcon;
  
  private final PendingIntent mIntent;
  
  private ArrayList<RemoteInput> mRemoteInputs;
  
  private final CharSequence mTitle;
  
  public NotificationCompat$Action$Builder(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent) {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null, true);
  }
  
  private NotificationCompat$Action$Builder(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInput[] paramArrayOfRemoteInput, boolean paramBoolean) {
    ArrayList<RemoteInput> arrayList;
    this.mAllowGeneratedReplies = true;
    this.mIcon = paramInt;
    this.mTitle = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    this.mIntent = paramPendingIntent;
    this.mExtras = paramBundle;
    if (paramArrayOfRemoteInput == null) {
      paramCharSequence = null;
    } else {
      arrayList = new ArrayList(Arrays.asList((Object[])paramArrayOfRemoteInput));
    } 
    this.mRemoteInputs = arrayList;
    this.mAllowGeneratedReplies = paramBoolean;
  }
  
  public NotificationCompat$Action$Builder(NotificationCompat$Action paramNotificationCompat$Action) {
    this(paramNotificationCompat$Action.icon, paramNotificationCompat$Action.title, paramNotificationCompat$Action.actionIntent, new Bundle(paramNotificationCompat$Action.mExtras), paramNotificationCompat$Action.getRemoteInputs(), paramNotificationCompat$Action.getAllowGeneratedReplies());
  }
  
  public NotificationCompat$Action$Builder addExtras(Bundle paramBundle) {
    if (paramBundle != null)
      this.mExtras.putAll(paramBundle); 
    return this;
  }
  
  public NotificationCompat$Action$Builder addRemoteInput(RemoteInput paramRemoteInput) {
    if (this.mRemoteInputs == null)
      this.mRemoteInputs = new ArrayList<RemoteInput>(); 
    this.mRemoteInputs.add(paramRemoteInput);
    return this;
  }
  
  public NotificationCompat$Action build() {
    if (this.mRemoteInputs != null) {
      RemoteInput[] arrayOfRemoteInput1 = this.mRemoteInputs.<RemoteInput>toArray(new RemoteInput[this.mRemoteInputs.size()]);
      return new NotificationCompat$Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayOfRemoteInput1, this.mAllowGeneratedReplies);
    } 
    RemoteInput[] arrayOfRemoteInput = null;
    return new NotificationCompat$Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayOfRemoteInput, this.mAllowGeneratedReplies);
  }
  
  public NotificationCompat$Action$Builder extend(NotificationCompat$Action$Extender paramNotificationCompat$Action$Extender) {
    paramNotificationCompat$Action$Extender.extend(this);
    return this;
  }
  
  public Bundle getExtras() {
    return this.mExtras;
  }
  
  public NotificationCompat$Action$Builder setAllowGeneratedReplies(boolean paramBoolean) {
    this.mAllowGeneratedReplies = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$Action$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */