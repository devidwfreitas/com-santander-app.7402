package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.RestrictTo;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaSessionCompat {
  static final String ACTION_ARGUMENT_EXTRAS = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";
  
  static final String ACTION_ARGUMENT_MEDIA_ID = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";
  
  static final String ACTION_ARGUMENT_QUERY = "android.support.v4.media.session.action.ARGUMENT_QUERY";
  
  static final String ACTION_ARGUMENT_REPEAT_MODE = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";
  
  static final String ACTION_ARGUMENT_SHUFFLE_MODE_ENABLED = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED";
  
  static final String ACTION_ARGUMENT_URI = "android.support.v4.media.session.action.ARGUMENT_URI";
  
  static final String ACTION_PLAY_FROM_URI = "android.support.v4.media.session.action.PLAY_FROM_URI";
  
  static final String ACTION_PREPARE = "android.support.v4.media.session.action.PREPARE";
  
  static final String ACTION_PREPARE_FROM_MEDIA_ID = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";
  
  static final String ACTION_PREPARE_FROM_SEARCH = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";
  
  static final String ACTION_PREPARE_FROM_URI = "android.support.v4.media.session.action.PREPARE_FROM_URI";
  
  static final String ACTION_SET_REPEAT_MODE = "android.support.v4.media.session.action.SET_REPEAT_MODE";
  
  static final String ACTION_SET_SHUFFLE_MODE_ENABLED = "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED";
  
  static final String EXTRA_BINDER = "android.support.v4.media.session.EXTRA_BINDER";
  
  public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
  
  public static final int FLAG_HANDLES_QUEUE_COMMANDS = 4;
  
  public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
  
  private static final int MAX_BITMAP_SIZE_IN_DP = 320;
  
  static final String TAG = "MediaSessionCompat";
  
  static int sMaxBitmapSize;
  
  private final ArrayList<MediaSessionCompat$OnActiveChangeListener> mActiveListeners = new ArrayList<MediaSessionCompat$OnActiveChangeListener>();
  
  private final MediaControllerCompat mController;
  
  private final MediaSessionCompat$MediaSessionImpl mImpl;
  
  private MediaSessionCompat(Context paramContext, MediaSessionCompat$MediaSessionImpl paramMediaSessionCompat$MediaSessionImpl) {
    this.mImpl = paramMediaSessionCompat$MediaSessionImpl;
    if (Build.VERSION.SDK_INT >= 21)
      setCallback(new MediaSessionCompat$2(this)); 
    this.mController = new MediaControllerCompat(paramContext, this);
  }
  
  public MediaSessionCompat(Context paramContext, String paramString) {
    this(paramContext, paramString, null, null);
  }
  
  public MediaSessionCompat(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent) {
    if (paramContext == null)
      throw new IllegalArgumentException("context must not be null"); 
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("tag must not be null or empty"); 
    ComponentName componentName = paramComponentName;
    if (paramComponentName == null) {
      paramComponentName = MediaButtonReceiver.getMediaButtonReceiverComponent(paramContext);
      componentName = paramComponentName;
      if (paramComponentName == null) {
        Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
        componentName = paramComponentName;
      } 
    } 
    PendingIntent pendingIntent = paramPendingIntent;
    if (componentName != null) {
      pendingIntent = paramPendingIntent;
      if (paramPendingIntent == null) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        pendingIntent = PendingIntent.getBroadcast(paramContext, 0, intent, 0);
      } 
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      this.mImpl = new MediaSessionCompat$MediaSessionImplApi21(paramContext, paramString);
      this.mImpl.setMediaButtonReceiver(pendingIntent);
      setCallback(new MediaSessionCompat$1(this));
    } else {
      this.mImpl = new MediaSessionCompat$MediaSessionImplBase(paramContext, paramString, componentName, pendingIntent);
    } 
    this.mController = new MediaControllerCompat(paramContext, this);
    if (sMaxBitmapSize == 0)
      sMaxBitmapSize = (int)TypedValue.applyDimension(1, 320.0F, paramContext.getResources().getDisplayMetrics()); 
  }
  
  public static MediaSessionCompat fromMediaSession(Context paramContext, Object paramObject) {
    return (paramContext == null || paramObject == null || Build.VERSION.SDK_INT < 21) ? null : new MediaSessionCompat(paramContext, new MediaSessionCompat$MediaSessionImplApi21(paramObject));
  }
  
  @Deprecated
  public static MediaSessionCompat obtain(Context paramContext, Object paramObject) {
    return fromMediaSession(paramContext, paramObject);
  }
  
  public void addOnActiveChangeListener(MediaSessionCompat$OnActiveChangeListener paramMediaSessionCompat$OnActiveChangeListener) {
    if (paramMediaSessionCompat$OnActiveChangeListener == null)
      throw new IllegalArgumentException("Listener may not be null"); 
    this.mActiveListeners.add(paramMediaSessionCompat$OnActiveChangeListener);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public String getCallingPackage() {
    return this.mImpl.getCallingPackage();
  }
  
  public MediaControllerCompat getController() {
    return this.mController;
  }
  
  public Object getMediaSession() {
    return this.mImpl.getMediaSession();
  }
  
  public Object getRemoteControlClient() {
    return this.mImpl.getRemoteControlClient();
  }
  
  public MediaSessionCompat$Token getSessionToken() {
    return this.mImpl.getSessionToken();
  }
  
  public boolean isActive() {
    return this.mImpl.isActive();
  }
  
  public void release() {
    this.mImpl.release();
  }
  
  public void removeOnActiveChangeListener(MediaSessionCompat$OnActiveChangeListener paramMediaSessionCompat$OnActiveChangeListener) {
    if (paramMediaSessionCompat$OnActiveChangeListener == null)
      throw new IllegalArgumentException("Listener may not be null"); 
    this.mActiveListeners.remove(paramMediaSessionCompat$OnActiveChangeListener);
  }
  
  public void sendSessionEvent(String paramString, Bundle paramBundle) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("event cannot be null or empty"); 
    this.mImpl.sendSessionEvent(paramString, paramBundle);
  }
  
  public void setActive(boolean paramBoolean) {
    this.mImpl.setActive(paramBoolean);
    Iterator<MediaSessionCompat$OnActiveChangeListener> iterator = this.mActiveListeners.iterator();
    while (iterator.hasNext())
      ((MediaSessionCompat$OnActiveChangeListener)iterator.next()).onActiveChanged(); 
  }
  
  public void setCallback(MediaSessionCompat$Callback paramMediaSessionCompat$Callback) {
    setCallback(paramMediaSessionCompat$Callback, null);
  }
  
  public void setCallback(MediaSessionCompat$Callback paramMediaSessionCompat$Callback, Handler paramHandler) {
    MediaSessionCompat$MediaSessionImpl mediaSessionCompat$MediaSessionImpl = this.mImpl;
    if (paramHandler == null)
      paramHandler = new Handler(); 
    mediaSessionCompat$MediaSessionImpl.setCallback(paramMediaSessionCompat$Callback, paramHandler);
  }
  
  public void setExtras(Bundle paramBundle) {
    this.mImpl.setExtras(paramBundle);
  }
  
  public void setFlags(int paramInt) {
    this.mImpl.setFlags(paramInt);
  }
  
  public void setMediaButtonReceiver(PendingIntent paramPendingIntent) {
    this.mImpl.setMediaButtonReceiver(paramPendingIntent);
  }
  
  public void setMetadata(MediaMetadataCompat paramMediaMetadataCompat) {
    this.mImpl.setMetadata(paramMediaMetadataCompat);
  }
  
  public void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat) {
    this.mImpl.setPlaybackState(paramPlaybackStateCompat);
  }
  
  public void setPlaybackToLocal(int paramInt) {
    this.mImpl.setPlaybackToLocal(paramInt);
  }
  
  public void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat) {
    if (paramVolumeProviderCompat == null)
      throw new IllegalArgumentException("volumeProvider may not be null!"); 
    this.mImpl.setPlaybackToRemote(paramVolumeProviderCompat);
  }
  
  public void setQueue(List<MediaSessionCompat$QueueItem> paramList) {
    this.mImpl.setQueue(paramList);
  }
  
  public void setQueueTitle(CharSequence paramCharSequence) {
    this.mImpl.setQueueTitle(paramCharSequence);
  }
  
  public void setRatingType(int paramInt) {
    this.mImpl.setRatingType(paramInt);
  }
  
  public void setRepeatMode(int paramInt) {
    this.mImpl.setRepeatMode(paramInt);
  }
  
  public void setSessionActivity(PendingIntent paramPendingIntent) {
    this.mImpl.setSessionActivity(paramPendingIntent);
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    this.mImpl.setShuffleModeEnabled(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */