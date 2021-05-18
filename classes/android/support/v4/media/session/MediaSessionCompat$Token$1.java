package android.support.v4.media.session;

import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

final class MediaSessionCompat$Token$1 implements Parcelable.Creator<MediaSessionCompat$Token> {
  public MediaSessionCompat$Token createFromParcel(Parcel paramParcel) {
    Parcelable parcelable;
    if (Build.VERSION.SDK_INT >= 21) {
      parcelable = paramParcel.readParcelable(null);
      return new MediaSessionCompat$Token(parcelable);
    } 
    IBinder iBinder = parcelable.readStrongBinder();
    return new MediaSessionCompat$Token(iBinder);
  }
  
  public MediaSessionCompat$Token[] newArray(int paramInt) {
    return new MediaSessionCompat$Token[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$Token$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */