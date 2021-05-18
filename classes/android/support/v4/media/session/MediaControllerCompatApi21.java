package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.annotation.RequiresApi;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@TargetApi(21)
@RequiresApi(21)
class MediaControllerCompatApi21 {
  public static void adjustVolume(Object paramObject, int paramInt1, int paramInt2) {
    ((MediaController)paramObject).adjustVolume(paramInt1, paramInt2);
  }
  
  public static Object createCallback(MediaControllerCompatApi21$Callback paramMediaControllerCompatApi21$Callback) {
    return new MediaControllerCompatApi21$CallbackProxy<MediaControllerCompatApi21$Callback>(paramMediaControllerCompatApi21$Callback);
  }
  
  public static boolean dispatchMediaButtonEvent(Object paramObject, KeyEvent paramKeyEvent) {
    return ((MediaController)paramObject).dispatchMediaButtonEvent(paramKeyEvent);
  }
  
  public static Object fromToken(Context paramContext, Object paramObject) {
    return new MediaController(paramContext, (MediaSession.Token)paramObject);
  }
  
  public static Bundle getExtras(Object paramObject) {
    return ((MediaController)paramObject).getExtras();
  }
  
  public static long getFlags(Object paramObject) {
    return ((MediaController)paramObject).getFlags();
  }
  
  public static Object getMediaController(Activity paramActivity) {
    return paramActivity.getMediaController();
  }
  
  public static Object getMetadata(Object paramObject) {
    return ((MediaController)paramObject).getMetadata();
  }
  
  public static String getPackageName(Object paramObject) {
    return ((MediaController)paramObject).getPackageName();
  }
  
  public static Object getPlaybackInfo(Object paramObject) {
    return ((MediaController)paramObject).getPlaybackInfo();
  }
  
  public static Object getPlaybackState(Object paramObject) {
    return ((MediaController)paramObject).getPlaybackState();
  }
  
  public static List<Object> getQueue(Object paramObject) {
    paramObject = ((MediaController)paramObject).getQueue();
    return (paramObject == null) ? null : new ArrayList((Collection<?>)paramObject);
  }
  
  public static CharSequence getQueueTitle(Object paramObject) {
    return ((MediaController)paramObject).getQueueTitle();
  }
  
  public static int getRatingType(Object paramObject) {
    return ((MediaController)paramObject).getRatingType();
  }
  
  public static PendingIntent getSessionActivity(Object paramObject) {
    return ((MediaController)paramObject).getSessionActivity();
  }
  
  public static Object getSessionToken(Object paramObject) {
    return ((MediaController)paramObject).getSessionToken();
  }
  
  public static Object getTransportControls(Object paramObject) {
    return ((MediaController)paramObject).getTransportControls();
  }
  
  public static void registerCallback(Object paramObject1, Object paramObject2, Handler paramHandler) {
    ((MediaController)paramObject1).registerCallback((MediaController.Callback)paramObject2, paramHandler);
  }
  
  public static void sendCommand(Object paramObject, String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {
    ((MediaController)paramObject).sendCommand(paramString, paramBundle, paramResultReceiver);
  }
  
  public static void setMediaController(Activity paramActivity, Object paramObject) {
    paramActivity.setMediaController((MediaController)paramObject);
  }
  
  public static void setVolumeTo(Object paramObject, int paramInt1, int paramInt2) {
    ((MediaController)paramObject).setVolumeTo(paramInt1, paramInt2);
  }
  
  public static void unregisterCallback(Object paramObject1, Object paramObject2) {
    ((MediaController)paramObject1).unregisterCallback((MediaController.Callback)paramObject2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */