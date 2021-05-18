package android.support.v4.app;

import android.os.Bundle;

public final class NotificationCompat$Action$WearableExtender implements NotificationCompat$Action$Extender {
  private static final int DEFAULT_FLAGS = 1;
  
  private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
  
  private static final int FLAG_AVAILABLE_OFFLINE = 1;
  
  private static final int FLAG_HINT_DISPLAY_INLINE = 4;
  
  private static final int FLAG_HINT_LAUNCHES_ACTIVITY = 2;
  
  private static final String KEY_CANCEL_LABEL = "cancelLabel";
  
  private static final String KEY_CONFIRM_LABEL = "confirmLabel";
  
  private static final String KEY_FLAGS = "flags";
  
  private static final String KEY_IN_PROGRESS_LABEL = "inProgressLabel";
  
  private CharSequence mCancelLabel;
  
  private CharSequence mConfirmLabel;
  
  private int mFlags = 1;
  
  private CharSequence mInProgressLabel;
  
  public NotificationCompat$Action$WearableExtender() {}
  
  public NotificationCompat$Action$WearableExtender(NotificationCompat$Action paramNotificationCompat$Action) {
    Bundle bundle = paramNotificationCompat$Action.getExtras().getBundle("android.wearable.EXTENSIONS");
    if (bundle != null) {
      this.mFlags = bundle.getInt("flags", 1);
      this.mInProgressLabel = bundle.getCharSequence("inProgressLabel");
      this.mConfirmLabel = bundle.getCharSequence("confirmLabel");
      this.mCancelLabel = bundle.getCharSequence("cancelLabel");
    } 
  }
  
  private void setFlag(int paramInt, boolean paramBoolean) {
    if (paramBoolean) {
      this.mFlags |= paramInt;
      return;
    } 
    this.mFlags &= paramInt ^ 0xFFFFFFFF;
  }
  
  public NotificationCompat$Action$WearableExtender clone() {
    NotificationCompat$Action$WearableExtender notificationCompat$Action$WearableExtender = new NotificationCompat$Action$WearableExtender();
    notificationCompat$Action$WearableExtender.mFlags = this.mFlags;
    notificationCompat$Action$WearableExtender.mInProgressLabel = this.mInProgressLabel;
    notificationCompat$Action$WearableExtender.mConfirmLabel = this.mConfirmLabel;
    notificationCompat$Action$WearableExtender.mCancelLabel = this.mCancelLabel;
    return notificationCompat$Action$WearableExtender;
  }
  
  public NotificationCompat$Action$Builder extend(NotificationCompat$Action$Builder paramNotificationCompat$Action$Builder) {
    Bundle bundle = new Bundle();
    if (this.mFlags != 1)
      bundle.putInt("flags", this.mFlags); 
    if (this.mInProgressLabel != null)
      bundle.putCharSequence("inProgressLabel", this.mInProgressLabel); 
    if (this.mConfirmLabel != null)
      bundle.putCharSequence("confirmLabel", this.mConfirmLabel); 
    if (this.mCancelLabel != null)
      bundle.putCharSequence("cancelLabel", this.mCancelLabel); 
    paramNotificationCompat$Action$Builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
    return paramNotificationCompat$Action$Builder;
  }
  
  public CharSequence getCancelLabel() {
    return this.mCancelLabel;
  }
  
  public CharSequence getConfirmLabel() {
    return this.mConfirmLabel;
  }
  
  public boolean getHintDisplayActionInline() {
    return ((this.mFlags & 0x4) != 0);
  }
  
  public boolean getHintLaunchesActivity() {
    return ((this.mFlags & 0x2) != 0);
  }
  
  public CharSequence getInProgressLabel() {
    return this.mInProgressLabel;
  }
  
  public boolean isAvailableOffline() {
    return ((this.mFlags & 0x1) != 0);
  }
  
  public NotificationCompat$Action$WearableExtender setAvailableOffline(boolean paramBoolean) {
    setFlag(1, paramBoolean);
    return this;
  }
  
  public NotificationCompat$Action$WearableExtender setCancelLabel(CharSequence paramCharSequence) {
    this.mCancelLabel = paramCharSequence;
    return this;
  }
  
  public NotificationCompat$Action$WearableExtender setConfirmLabel(CharSequence paramCharSequence) {
    this.mConfirmLabel = paramCharSequence;
    return this;
  }
  
  public NotificationCompat$Action$WearableExtender setHintDisplayActionInline(boolean paramBoolean) {
    setFlag(4, paramBoolean);
    return this;
  }
  
  public NotificationCompat$Action$WearableExtender setHintLaunchesActivity(boolean paramBoolean) {
    setFlag(2, paramBoolean);
    return this;
  }
  
  public NotificationCompat$Action$WearableExtender setInProgressLabel(CharSequence paramCharSequence) {
    this.mInProgressLabel = paramCharSequence;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$Action$WearableExtender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */