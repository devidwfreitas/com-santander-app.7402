package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;

final class MediaSessionCompat$ResultReceiverWrapper implements Parcelable {
  public static final Parcelable.Creator<MediaSessionCompat$ResultReceiverWrapper> CREATOR = new MediaSessionCompat$ResultReceiverWrapper$1();
  
  private ResultReceiver mResultReceiver;
  
  MediaSessionCompat$ResultReceiverWrapper(Parcel paramParcel) {
    this.mResultReceiver = (ResultReceiver)ResultReceiver.CREATOR.createFromParcel(paramParcel);
  }
  
  public MediaSessionCompat$ResultReceiverWrapper(ResultReceiver paramResultReceiver) {
    this.mResultReceiver = paramResultReceiver;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    this.mResultReceiver.writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$ResultReceiverWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */