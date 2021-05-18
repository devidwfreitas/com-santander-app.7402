package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

final class PlaybackStateCompat$1 implements Parcelable.Creator<PlaybackStateCompat> {
  public PlaybackStateCompat createFromParcel(Parcel paramParcel) {
    return new PlaybackStateCompat(paramParcel);
  }
  
  public PlaybackStateCompat[] newArray(int paramInt) {
    return new PlaybackStateCompat[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\PlaybackStateCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */