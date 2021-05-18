package android.support.v4.media;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$ItemReceiver extends ResultReceiver {
  private final MediaBrowserCompat$ItemCallback mCallback;
  
  private final String mMediaId;
  
  MediaBrowserCompat$ItemReceiver(String paramString, MediaBrowserCompat$ItemCallback paramMediaBrowserCompat$ItemCallback, Handler paramHandler) {
    super(paramHandler);
    this.mMediaId = paramString;
    this.mCallback = paramMediaBrowserCompat$ItemCallback;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {
    if (paramBundle != null)
      paramBundle.setClassLoader(MediaBrowserCompat.class.getClassLoader()); 
    if (paramInt != 0 || paramBundle == null || !paramBundle.containsKey("media_item")) {
      this.mCallback.onError(this.mMediaId);
      return;
    } 
    Parcelable parcelable = paramBundle.getParcelable("media_item");
    if (parcelable == null || parcelable instanceof MediaBrowserCompat$MediaItem) {
      this.mCallback.onItemLoaded((MediaBrowserCompat$MediaItem)parcelable);
      return;
    } 
    this.mCallback.onError(this.mMediaId);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$ItemReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */