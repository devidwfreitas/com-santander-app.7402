package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

final class RatingCompat$1 implements Parcelable.Creator<RatingCompat> {
  public RatingCompat createFromParcel(Parcel paramParcel) {
    return new RatingCompat(paramParcel.readInt(), paramParcel.readFloat());
  }
  
  public RatingCompat[] newArray(int paramInt) {
    return new RatingCompat[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\RatingCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */