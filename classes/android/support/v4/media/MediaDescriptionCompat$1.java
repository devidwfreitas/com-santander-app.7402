package android.support.v4.media;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;

final class MediaDescriptionCompat$1 implements Parcelable.Creator<MediaDescriptionCompat> {
  public MediaDescriptionCompat createFromParcel(Parcel paramParcel) {
    return (Build.VERSION.SDK_INT < 21) ? new MediaDescriptionCompat(paramParcel) : MediaDescriptionCompat.fromMediaDescription(MediaDescriptionCompatApi21.fromParcel(paramParcel));
  }
  
  public MediaDescriptionCompat[] newArray(int paramInt) {
    return new MediaDescriptionCompat[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaDescriptionCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */