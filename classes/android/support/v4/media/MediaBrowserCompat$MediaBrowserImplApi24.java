package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;

class MediaBrowserCompat$MediaBrowserImplApi24 extends MediaBrowserCompat$MediaBrowserImplApi23 {
  public MediaBrowserCompat$MediaBrowserImplApi24(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat$ConnectionCallback paramMediaBrowserCompat$ConnectionCallback, Bundle paramBundle) {
    super(paramContext, paramComponentName, paramMediaBrowserCompat$ConnectionCallback, paramBundle);
  }
  
  public void subscribe(@NonNull String paramString, @NonNull Bundle paramBundle, @NonNull MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    if (paramBundle == null) {
      MediaBrowserCompatApi21.subscribe(this.mBrowserObj, paramString, MediaBrowserCompat$SubscriptionCallback.access$200(paramMediaBrowserCompat$SubscriptionCallback));
      return;
    } 
    MediaBrowserCompatApi24.subscribe(this.mBrowserObj, paramString, paramBundle, MediaBrowserCompat$SubscriptionCallback.access$200(paramMediaBrowserCompat$SubscriptionCallback));
  }
  
  public void unsubscribe(@NonNull String paramString, MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    if (paramMediaBrowserCompat$SubscriptionCallback == null) {
      MediaBrowserCompatApi21.unsubscribe(this.mBrowserObj, paramString);
      return;
    } 
    MediaBrowserCompatApi24.unsubscribe(this.mBrowserObj, paramString, MediaBrowserCompat$SubscriptionCallback.access$200(paramMediaBrowserCompat$SubscriptionCallback));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */