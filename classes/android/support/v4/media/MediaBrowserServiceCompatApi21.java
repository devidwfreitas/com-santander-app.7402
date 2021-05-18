package android.support.v4.media;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.media.session.MediaSession;
import android.os.IBinder;
import android.service.media.MediaBrowserService;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class MediaBrowserServiceCompatApi21 {
  public static Object createService(Context paramContext, MediaBrowserServiceCompatApi21$ServiceCompatProxy paramMediaBrowserServiceCompatApi21$ServiceCompatProxy) {
    return new MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor(paramContext, paramMediaBrowserServiceCompatApi21$ServiceCompatProxy);
  }
  
  public static void notifyChildrenChanged(Object paramObject, String paramString) {
    ((MediaBrowserService)paramObject).notifyChildrenChanged(paramString);
  }
  
  public static IBinder onBind(Object paramObject, Intent paramIntent) {
    return ((MediaBrowserService)paramObject).onBind(paramIntent);
  }
  
  public static void onCreate(Object paramObject) {
    ((MediaBrowserService)paramObject).onCreate();
  }
  
  public static void setSessionToken(Object paramObject1, Object paramObject2) {
    ((MediaBrowserService)paramObject1).setSessionToken((MediaSession.Token)paramObject2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */