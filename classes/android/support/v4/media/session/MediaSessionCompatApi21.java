package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@TargetApi(21)
@RequiresApi(21)
class MediaSessionCompatApi21 {
  public static Object createCallback(MediaSessionCompatApi21$Callback paramMediaSessionCompatApi21$Callback) {
    return new MediaSessionCompatApi21$CallbackProxy<MediaSessionCompatApi21$Callback>(paramMediaSessionCompatApi21$Callback);
  }
  
  public static Object createSession(Context paramContext, String paramString) {
    return new MediaSession(paramContext, paramString);
  }
  
  public static Parcelable getSessionToken(Object paramObject) {
    return (Parcelable)((MediaSession)paramObject).getSessionToken();
  }
  
  public static boolean isActive(Object paramObject) {
    return ((MediaSession)paramObject).isActive();
  }
  
  public static void release(Object paramObject) {
    ((MediaSession)paramObject).release();
  }
  
  public static void sendSessionEvent(Object paramObject, String paramString, Bundle paramBundle) {
    ((MediaSession)paramObject).sendSessionEvent(paramString, paramBundle);
  }
  
  public static void setActive(Object paramObject, boolean paramBoolean) {
    ((MediaSession)paramObject).setActive(paramBoolean);
  }
  
  public static void setCallback(Object paramObject1, Object paramObject2, Handler paramHandler) {
    ((MediaSession)paramObject1).setCallback((MediaSession.Callback)paramObject2, paramHandler);
  }
  
  public static void setExtras(Object paramObject, Bundle paramBundle) {
    ((MediaSession)paramObject).setExtras(paramBundle);
  }
  
  public static void setFlags(Object paramObject, int paramInt) {
    ((MediaSession)paramObject).setFlags(paramInt);
  }
  
  public static void setMediaButtonReceiver(Object paramObject, PendingIntent paramPendingIntent) {
    ((MediaSession)paramObject).setMediaButtonReceiver(paramPendingIntent);
  }
  
  public static void setMetadata(Object paramObject1, Object paramObject2) {
    ((MediaSession)paramObject1).setMetadata((MediaMetadata)paramObject2);
  }
  
  public static void setPlaybackState(Object paramObject1, Object paramObject2) {
    ((MediaSession)paramObject1).setPlaybackState((PlaybackState)paramObject2);
  }
  
  public static void setPlaybackToLocal(Object paramObject, int paramInt) {
    AudioAttributes.Builder builder = new AudioAttributes.Builder();
    builder.setLegacyStreamType(paramInt);
    ((MediaSession)paramObject).setPlaybackToLocal(builder.build());
  }
  
  public static void setPlaybackToRemote(Object paramObject1, Object paramObject2) {
    ((MediaSession)paramObject1).setPlaybackToRemote((VolumeProvider)paramObject2);
  }
  
  public static void setQueue(Object paramObject, List<Object> paramList) {
    if (paramList == null) {
      ((MediaSession)paramObject).setQueue(null);
      return;
    } 
    ArrayList<MediaSession.QueueItem> arrayList = new ArrayList();
    Iterator<MediaSession.QueueItem> iterator = paramList.iterator();
    while (iterator.hasNext())
      arrayList.add(iterator.next()); 
    ((MediaSession)paramObject).setQueue(arrayList);
  }
  
  public static void setQueueTitle(Object paramObject, CharSequence paramCharSequence) {
    ((MediaSession)paramObject).setQueueTitle(paramCharSequence);
  }
  
  public static void setSessionActivity(Object paramObject, PendingIntent paramPendingIntent) {
    ((MediaSession)paramObject).setSessionActivity(paramPendingIntent);
  }
  
  public static Object verifySession(Object paramObject) {
    if (paramObject instanceof MediaSession)
      return paramObject; 
    throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
  }
  
  public static Object verifyToken(Object paramObject) {
    if (paramObject instanceof MediaSession.Token)
      return paramObject; 
    throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */