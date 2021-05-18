package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.support.annotation.NonNull;

class MediaBrowserCompatApi23$ItemCallbackProxy<T extends MediaBrowserCompatApi23$ItemCallback> extends MediaBrowser.ItemCallback {
  protected final T mItemCallback;
  
  public MediaBrowserCompatApi23$ItemCallbackProxy(T paramT) {
    this.mItemCallback = paramT;
  }
  
  public void onError(@NonNull String paramString) {
    this.mItemCallback.onError(paramString);
  }
  
  public void onItemLoaded(MediaBrowser.MediaItem paramMediaItem) {
    if (paramMediaItem == null) {
      this.mItemCallback.onItemLoaded(null);
      return;
    } 
    Parcel parcel = Parcel.obtain();
    paramMediaItem.writeToParcel(parcel, 0);
    this.mItemCallback.onItemLoaded(parcel);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi23$ItemCallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */