package android.support.v4.media;

import android.os.Parcel;
import android.support.annotation.NonNull;

class MediaBrowserCompat$ItemCallback$StubApi23 implements MediaBrowserCompatApi23$ItemCallback {
  public void onError(@NonNull String paramString) {
    MediaBrowserCompat$ItemCallback.this.onError(paramString);
  }
  
  public void onItemLoaded(Parcel paramParcel) {
    if (paramParcel == null) {
      MediaBrowserCompat$ItemCallback.this.onItemLoaded(null);
      return;
    } 
    paramParcel.setDataPosition(0);
    MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem)MediaBrowserCompat$MediaItem.CREATOR.createFromParcel(paramParcel);
    paramParcel.recycle();
    MediaBrowserCompat$ItemCallback.this.onItemLoaded(mediaBrowserCompat$MediaItem);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$ItemCallback$StubApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */