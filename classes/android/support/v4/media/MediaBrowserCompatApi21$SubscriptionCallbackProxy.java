package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.support.annotation.NonNull;
import java.util.List;

class MediaBrowserCompatApi21$SubscriptionCallbackProxy<T extends MediaBrowserCompatApi21$SubscriptionCallback> extends MediaBrowser.SubscriptionCallback {
  protected final T mSubscriptionCallback;
  
  public MediaBrowserCompatApi21$SubscriptionCallbackProxy(T paramT) {
    this.mSubscriptionCallback = paramT;
  }
  
  public void onChildrenLoaded(@NonNull String paramString, List<MediaBrowser.MediaItem> paramList) {
    this.mSubscriptionCallback.onChildrenLoaded(paramString, paramList);
  }
  
  public void onError(@NonNull String paramString) {
    this.mSubscriptionCallback.onError(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi21$SubscriptionCallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */