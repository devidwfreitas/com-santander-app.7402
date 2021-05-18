package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import java.util.List;

class MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor extends MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor {
  MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor(Context paramContext, MediaBrowserServiceCompatApi24$ServiceCompatProxy paramMediaBrowserServiceCompatApi24$ServiceCompatProxy) {
    super(paramContext, paramMediaBrowserServiceCompatApi24$ServiceCompatProxy);
  }
  
  public void onLoadChildren(String paramString, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> paramResult, Bundle paramBundle) {
    ((MediaBrowserServiceCompatApi24$ServiceCompatProxy)this.mServiceProxy).onLoadChildren(paramString, new MediaBrowserServiceCompatApi24$ResultWrapper(paramResult), paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */