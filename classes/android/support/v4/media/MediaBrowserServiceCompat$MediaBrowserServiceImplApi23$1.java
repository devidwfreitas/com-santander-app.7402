package android.support.v4.media;

import android.os.Parcel;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1 extends MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> {
  MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1(Object paramObject) {
    super(paramObject);
  }
  
  public void detach() {
    resultWrapper.detach();
  }
  
  void onResultSent(MediaBrowserCompat$MediaItem paramMediaBrowserCompat$MediaItem, int paramInt) {
    if (paramMediaBrowserCompat$MediaItem == null) {
      resultWrapper.sendResult(null);
      return;
    } 
    Parcel parcel = Parcel.obtain();
    paramMediaBrowserCompat$MediaItem.writeToParcel(parcel, 0);
    resultWrapper.sendResult(parcel);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */