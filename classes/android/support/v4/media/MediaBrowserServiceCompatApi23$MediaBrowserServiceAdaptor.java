package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;

class MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor extends MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor {
  MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor(Context paramContext, MediaBrowserServiceCompatApi23$ServiceCompatProxy paramMediaBrowserServiceCompatApi23$ServiceCompatProxy) {
    super(paramContext, paramMediaBrowserServiceCompatApi23$ServiceCompatProxy);
  }
  
  public void onLoadItem(String paramString, MediaBrowserService.Result<MediaBrowser.MediaItem> paramResult) {
    ((MediaBrowserServiceCompatApi23$ServiceCompatProxy)this.mServiceProxy).onLoadItem(paramString, new MediaBrowserServiceCompatApi21$ResultWrapper<Parcel>(paramResult));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */