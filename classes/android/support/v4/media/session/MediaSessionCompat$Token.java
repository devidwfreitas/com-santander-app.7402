package android.support.v4.media.session;

import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class MediaSessionCompat$Token implements Parcelable {
  public static final Parcelable.Creator<MediaSessionCompat$Token> CREATOR = new MediaSessionCompat$Token$1();
  
  private final Object mInner;
  
  MediaSessionCompat$Token(Object paramObject) {
    this.mInner = paramObject;
  }
  
  public static MediaSessionCompat$Token fromToken(Object paramObject) {
    return (paramObject == null || Build.VERSION.SDK_INT < 21) ? null : new MediaSessionCompat$Token(MediaSessionCompatApi21.verifyToken(paramObject));
  }
  
  public int describeContents() {
    return 0;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof MediaSessionCompat$Token))
        return false; 
      paramObject = paramObject;
      return (this.mInner == null) ? (!(((MediaSessionCompat$Token)paramObject).mInner != null)) : ((((MediaSessionCompat$Token)paramObject).mInner == null) ? false : this.mInner.equals(((MediaSessionCompat$Token)paramObject).mInner));
    } 
    return true;
  }
  
  public Object getToken() {
    return this.mInner;
  }
  
  public int hashCode() {
    return (this.mInner == null) ? 0 : this.mInner.hashCode();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    if (Build.VERSION.SDK_INT >= 21) {
      paramParcel.writeParcelable((Parcelable)this.mInner, paramInt);
      return;
    } 
    paramParcel.writeStrongBinder((IBinder)this.mInner);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$Token.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */