package android.support.v4.media;

import android.os.Build;
import android.support.annotation.NonNull;

public abstract class MediaBrowserCompat$ItemCallback {
  final Object mItemCallbackObj;
  
  public MediaBrowserCompat$ItemCallback() {
    if (Build.VERSION.SDK_INT >= 23) {
      this.mItemCallbackObj = MediaBrowserCompatApi23.createItemCallback(new MediaBrowserCompat$ItemCallback$StubApi23(this));
      return;
    } 
    this.mItemCallbackObj = null;
  }
  
  public void onError(@NonNull String paramString) {}
  
  public void onItemLoaded(MediaBrowserCompat$MediaItem paramMediaBrowserCompat$MediaItem) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$ItemCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */