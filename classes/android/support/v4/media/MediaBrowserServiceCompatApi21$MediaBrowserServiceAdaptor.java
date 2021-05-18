package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import java.util.List;

class MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor extends MediaBrowserService {
  final MediaBrowserServiceCompatApi21$ServiceCompatProxy mServiceProxy;
  
  MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor(Context paramContext, MediaBrowserServiceCompatApi21$ServiceCompatProxy paramMediaBrowserServiceCompatApi21$ServiceCompatProxy) {
    attachBaseContext(paramContext);
    this.mServiceProxy = paramMediaBrowserServiceCompatApi21$ServiceCompatProxy;
  }
  
  public MediaBrowserService.BrowserRoot onGetRoot(String paramString, int paramInt, Bundle paramBundle) {
    MediaBrowserServiceCompatApi21$BrowserRoot mediaBrowserServiceCompatApi21$BrowserRoot = this.mServiceProxy.onGetRoot(paramString, paramInt, paramBundle);
    return (mediaBrowserServiceCompatApi21$BrowserRoot == null) ? null : new MediaBrowserService.BrowserRoot(mediaBrowserServiceCompatApi21$BrowserRoot.mRootId, mediaBrowserServiceCompatApi21$BrowserRoot.mExtras);
  }
  
  public void onLoadChildren(String paramString, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> paramResult) {
    this.mServiceProxy.onLoadChildren(paramString, new MediaBrowserServiceCompatApi21$ResultWrapper<List<Parcel>>(paramResult));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */