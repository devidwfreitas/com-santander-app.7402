package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public final class PlaybackStateCompat$CustomAction implements Parcelable {
  public static final Parcelable.Creator<PlaybackStateCompat$CustomAction> CREATOR = new PlaybackStateCompat$CustomAction$1();
  
  private final String mAction;
  
  private Object mCustomActionObj;
  
  private final Bundle mExtras;
  
  private final int mIcon;
  
  private final CharSequence mName;
  
  PlaybackStateCompat$CustomAction(Parcel paramParcel) {
    this.mAction = paramParcel.readString();
    this.mName = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel);
    this.mIcon = paramParcel.readInt();
    this.mExtras = paramParcel.readBundle();
  }
  
  PlaybackStateCompat$CustomAction(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle) {
    this.mAction = paramString;
    this.mName = paramCharSequence;
    this.mIcon = paramInt;
    this.mExtras = paramBundle;
  }
  
  public static PlaybackStateCompat$CustomAction fromCustomAction(Object paramObject) {
    if (paramObject == null || Build.VERSION.SDK_INT < 21)
      return null; 
    PlaybackStateCompat$CustomAction playbackStateCompat$CustomAction = new PlaybackStateCompat$CustomAction(PlaybackStateCompatApi21$CustomAction.getAction(paramObject), PlaybackStateCompatApi21$CustomAction.getName(paramObject), PlaybackStateCompatApi21$CustomAction.getIcon(paramObject), PlaybackStateCompatApi21$CustomAction.getExtras(paramObject));
    playbackStateCompat$CustomAction.mCustomActionObj = paramObject;
    return playbackStateCompat$CustomAction;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public String getAction() {
    return this.mAction;
  }
  
  public Object getCustomAction() {
    if (this.mCustomActionObj != null || Build.VERSION.SDK_INT < 21)
      return this.mCustomActionObj; 
    this.mCustomActionObj = PlaybackStateCompatApi21$CustomAction.newInstance(this.mAction, this.mName, this.mIcon, this.mExtras);
    return this.mCustomActionObj;
  }
  
  public Bundle getExtras() {
    return this.mExtras;
  }
  
  public int getIcon() {
    return this.mIcon;
  }
  
  public CharSequence getName() {
    return this.mName;
  }
  
  public String toString() {
    return "Action:mName='" + this.mName + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.mAction);
    TextUtils.writeToParcel(this.mName, paramParcel, paramInt);
    paramParcel.writeInt(this.mIcon);
    paramParcel.writeBundle(this.mExtras);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\PlaybackStateCompat$CustomAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */