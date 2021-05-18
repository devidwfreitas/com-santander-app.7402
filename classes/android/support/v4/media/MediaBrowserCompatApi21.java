package android.support.v4.media;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class MediaBrowserCompatApi21 {
  static final String NULL_MEDIA_ITEM_ID = "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM";
  
  public static void connect(Object paramObject) {
    ((MediaBrowser)paramObject).connect();
  }
  
  public static Object createBrowser(Context paramContext, ComponentName paramComponentName, Object paramObject, Bundle paramBundle) {
    return new MediaBrowser(paramContext, paramComponentName, (MediaBrowser.ConnectionCallback)paramObject, paramBundle);
  }
  
  public static Object createConnectionCallback(MediaBrowserCompatApi21$ConnectionCallback paramMediaBrowserCompatApi21$ConnectionCallback) {
    return new MediaBrowserCompatApi21$ConnectionCallbackProxy<MediaBrowserCompatApi21$ConnectionCallback>(paramMediaBrowserCompatApi21$ConnectionCallback);
  }
  
  public static Object createSubscriptionCallback(MediaBrowserCompatApi21$SubscriptionCallback paramMediaBrowserCompatApi21$SubscriptionCallback) {
    return new MediaBrowserCompatApi21$SubscriptionCallbackProxy<MediaBrowserCompatApi21$SubscriptionCallback>(paramMediaBrowserCompatApi21$SubscriptionCallback);
  }
  
  public static void disconnect(Object paramObject) {
    ((MediaBrowser)paramObject).disconnect();
  }
  
  public static Bundle getExtras(Object paramObject) {
    return ((MediaBrowser)paramObject).getExtras();
  }
  
  public static String getRoot(Object paramObject) {
    return ((MediaBrowser)paramObject).getRoot();
  }
  
  public static ComponentName getServiceComponent(Object paramObject) {
    return ((MediaBrowser)paramObject).getServiceComponent();
  }
  
  public static Object getSessionToken(Object paramObject) {
    return ((MediaBrowser)paramObject).getSessionToken();
  }
  
  public static boolean isConnected(Object paramObject) {
    return ((MediaBrowser)paramObject).isConnected();
  }
  
  public static void subscribe(Object paramObject1, String paramString, Object paramObject2) {
    ((MediaBrowser)paramObject1).subscribe(paramString, (MediaBrowser.SubscriptionCallback)paramObject2);
  }
  
  public static void unsubscribe(Object paramObject, String paramString) {
    ((MediaBrowser)paramObject).unsubscribe(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */