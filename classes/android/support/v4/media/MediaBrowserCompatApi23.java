package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.browse.MediaBrowser;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class MediaBrowserCompatApi23 {
  public static Object createItemCallback(MediaBrowserCompatApi23$ItemCallback paramMediaBrowserCompatApi23$ItemCallback) {
    return new MediaBrowserCompatApi23$ItemCallbackProxy<MediaBrowserCompatApi23$ItemCallback>(paramMediaBrowserCompatApi23$ItemCallback);
  }
  
  public static void getItem(Object paramObject1, String paramString, Object paramObject2) {
    ((MediaBrowser)paramObject1).getItem(paramString, (MediaBrowser.ItemCallback)paramObject2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */