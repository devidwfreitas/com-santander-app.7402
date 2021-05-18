package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.List;

class MediaBrowserCompat$SubscriptionCallback$StubApi24 extends MediaBrowserCompat$SubscriptionCallback$StubApi21 implements MediaBrowserCompatApi24$SubscriptionCallback {
  MediaBrowserCompat$SubscriptionCallback$StubApi24() {
    super(paramMediaBrowserCompat$SubscriptionCallback);
  }
  
  public void onChildrenLoaded(@NonNull String paramString, List<?> paramList, @NonNull Bundle paramBundle) {
    MediaBrowserCompat$SubscriptionCallback.this.onChildrenLoaded(paramString, MediaBrowserCompat$MediaItem.fromMediaItemList(paramList), paramBundle);
  }
  
  public void onError(@NonNull String paramString, @NonNull Bundle paramBundle) {
    MediaBrowserCompat$SubscriptionCallback.this.onError(paramString, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$SubscriptionCallback$StubApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */