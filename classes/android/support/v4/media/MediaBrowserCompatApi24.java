package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(24)
@RequiresApi(24)
class MediaBrowserCompatApi24 {
  public static Object createSubscriptionCallback(MediaBrowserCompatApi24$SubscriptionCallback paramMediaBrowserCompatApi24$SubscriptionCallback) {
    return new MediaBrowserCompatApi24$SubscriptionCallbackProxy<MediaBrowserCompatApi24$SubscriptionCallback>(paramMediaBrowserCompatApi24$SubscriptionCallback);
  }
  
  public static void subscribe(Object paramObject1, String paramString, Bundle paramBundle, Object paramObject2) {
    ((MediaBrowser)paramObject1).subscribe(paramString, paramBundle, (MediaBrowser.SubscriptionCallback)paramObject2);
  }
  
  public static void unsubscribe(Object paramObject1, String paramString, Object paramObject2) {
    ((MediaBrowser)paramObject1).unsubscribe(paramString, (MediaBrowser.SubscriptionCallback)paramObject2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */