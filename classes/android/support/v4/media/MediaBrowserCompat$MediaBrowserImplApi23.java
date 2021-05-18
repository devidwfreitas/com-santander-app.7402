package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;

class MediaBrowserCompat$MediaBrowserImplApi23 extends MediaBrowserCompat$MediaBrowserImplApi21 {
  public MediaBrowserCompat$MediaBrowserImplApi23(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat$ConnectionCallback paramMediaBrowserCompat$ConnectionCallback, Bundle paramBundle) {
    super(paramContext, paramComponentName, paramMediaBrowserCompat$ConnectionCallback, paramBundle);
  }
  
  public void getItem(@NonNull String paramString, @NonNull MediaBrowserCompat$ItemCallback paramMediaBrowserCompat$ItemCallback) {
    if (this.mServiceBinderWrapper == null) {
      MediaBrowserCompatApi23.getItem(this.mBrowserObj, paramString, paramMediaBrowserCompat$ItemCallback.mItemCallbackObj);
      return;
    } 
    super.getItem(paramString, paramMediaBrowserCompat$ItemCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */