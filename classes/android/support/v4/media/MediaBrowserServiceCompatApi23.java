package android.support.v4.media;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class MediaBrowserServiceCompatApi23 {
  public static Object createService(Context paramContext, MediaBrowserServiceCompatApi23$ServiceCompatProxy paramMediaBrowserServiceCompatApi23$ServiceCompatProxy) {
    return new MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor(paramContext, paramMediaBrowserServiceCompatApi23$ServiceCompatProxy);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */