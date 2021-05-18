package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

final class MediaMetadataCompat$1 implements Parcelable.Creator<MediaMetadataCompat> {
  public MediaMetadataCompat createFromParcel(Parcel paramParcel) {
    return new MediaMetadataCompat(paramParcel);
  }
  
  public MediaMetadataCompat[] newArray(int paramInt) {
    return new MediaMetadataCompat[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaMetadataCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */