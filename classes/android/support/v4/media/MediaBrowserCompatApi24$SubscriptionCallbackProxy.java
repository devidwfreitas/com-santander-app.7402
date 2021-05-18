package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.List;

class MediaBrowserCompatApi24$SubscriptionCallbackProxy<T extends MediaBrowserCompatApi24$SubscriptionCallback> extends MediaBrowserCompatApi21$SubscriptionCallbackProxy<T> {
  public MediaBrowserCompatApi24$SubscriptionCallbackProxy(T paramT) {
    super(paramT);
  }
  
  public void onChildrenLoaded(@NonNull String paramString, List<MediaBrowser.MediaItem> paramList, @NonNull Bundle paramBundle) {
    ((MediaBrowserCompatApi24$SubscriptionCallback)this.mSubscriptionCallback).onChildrenLoaded(paramString, paramList, paramBundle);
  }
  
  public void onError(@NonNull String paramString, @NonNull Bundle paramBundle) {
    ((MediaBrowserCompatApi24$SubscriptionCallback)this.mSubscriptionCallback).onError(paramString, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi24$SubscriptionCallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */