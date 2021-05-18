package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.SupportActivity;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;

public final class MediaControllerCompat {
  static final String COMMAND_ADD_QUEUE_ITEM = "android.support.v4.media.session.command.ADD_QUEUE_ITEM";
  
  static final String COMMAND_ADD_QUEUE_ITEM_AT = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT";
  
  static final String COMMAND_ARGUMENT_INDEX = "android.support.v4.media.session.command.ARGUMENT_INDEX";
  
  static final String COMMAND_ARGUMENT_MEDIA_DESCRIPTION = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION";
  
  static final String COMMAND_GET_EXTRA_BINDER = "android.support.v4.media.session.command.GET_EXTRA_BINDER";
  
  static final String COMMAND_REMOVE_QUEUE_ITEM = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM";
  
  static final String COMMAND_REMOVE_QUEUE_ITEM_AT = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT";
  
  static final String TAG = "MediaControllerCompat";
  
  private final MediaControllerCompat$MediaControllerImpl mImpl;
  
  private final MediaSessionCompat$Token mToken;
  
  public MediaControllerCompat(Context paramContext, MediaSessionCompat$Token paramMediaSessionCompat$Token) {
    if (paramMediaSessionCompat$Token == null)
      throw new IllegalArgumentException("sessionToken must not be null"); 
    this.mToken = paramMediaSessionCompat$Token;
    if (Build.VERSION.SDK_INT >= 24) {
      this.mImpl = new MediaControllerCompat$MediaControllerImplApi24(paramContext, paramMediaSessionCompat$Token);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 23) {
      this.mImpl = new MediaControllerCompat$MediaControllerImplApi23(paramContext, paramMediaSessionCompat$Token);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      this.mImpl = new MediaControllerCompat$MediaControllerImplApi21(paramContext, paramMediaSessionCompat$Token);
      return;
    } 
    this.mImpl = new MediaControllerCompat$MediaControllerImplBase(this.mToken);
  }
  
  public MediaControllerCompat(Context paramContext, MediaSessionCompat paramMediaSessionCompat) {
    if (paramMediaSessionCompat == null)
      throw new IllegalArgumentException("session must not be null"); 
    this.mToken = paramMediaSessionCompat.getSessionToken();
    if (Build.VERSION.SDK_INT >= 24) {
      this.mImpl = new MediaControllerCompat$MediaControllerImplApi24(paramContext, paramMediaSessionCompat);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 23) {
      this.mImpl = new MediaControllerCompat$MediaControllerImplApi23(paramContext, paramMediaSessionCompat);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      this.mImpl = new MediaControllerCompat$MediaControllerImplApi21(paramContext, paramMediaSessionCompat);
      return;
    } 
    this.mImpl = new MediaControllerCompat$MediaControllerImplBase(this.mToken);
  }
  
  public static MediaControllerCompat getMediaController(Activity paramActivity) {
    MediaControllerCompat$MediaControllerExtraData mediaControllerCompat$MediaControllerExtraData;
    Object object1 = null;
    if (paramActivity instanceof SupportActivity) {
      mediaControllerCompat$MediaControllerExtraData = (MediaControllerCompat$MediaControllerExtraData)((SupportActivity)paramActivity).getExtraData(MediaControllerCompat$MediaControllerExtraData.class);
      if (mediaControllerCompat$MediaControllerExtraData != null) {
        MediaControllerCompat mediaControllerCompat = mediaControllerCompat$MediaControllerExtraData.getMediaController();
      } else {
        mediaControllerCompat$MediaControllerExtraData = null;
      } 
      return (MediaControllerCompat)mediaControllerCompat$MediaControllerExtraData;
    } 
    Object object = object1;
    if (Build.VERSION.SDK_INT >= 21) {
      Object object2 = MediaControllerCompatApi21.getMediaController((Activity)mediaControllerCompat$MediaControllerExtraData);
      object = object1;
      if (object2 != null) {
        object = MediaControllerCompatApi21.getSessionToken(object2);
        try {
          return new MediaControllerCompat((Context)mediaControllerCompat$MediaControllerExtraData, MediaSessionCompat$Token.fromToken(object));
        } catch (RemoteException remoteException) {
          Log.e("MediaControllerCompat", "Dead object in getMediaController.", (Throwable)remoteException);
          return null;
        } 
      } 
    } 
    return (MediaControllerCompat)object;
  }
  
  public static void setMediaController(Activity paramActivity, MediaControllerCompat paramMediaControllerCompat) {
    if (paramActivity instanceof SupportActivity)
      ((SupportActivity)paramActivity).putExtraData(new MediaControllerCompat$MediaControllerExtraData(paramMediaControllerCompat)); 
    if (Build.VERSION.SDK_INT >= 21) {
      Object object = null;
      if (paramMediaControllerCompat != null)
        object = MediaControllerCompatApi21.fromToken((Context)paramActivity, paramMediaControllerCompat.getSessionToken().getToken()); 
      MediaControllerCompatApi21.setMediaController(paramActivity, object);
    } 
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    this.mImpl.addQueueItem(paramMediaDescriptionCompat);
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {
    this.mImpl.addQueueItem(paramMediaDescriptionCompat, paramInt);
  }
  
  public void adjustVolume(int paramInt1, int paramInt2) {
    this.mImpl.adjustVolume(paramInt1, paramInt2);
  }
  
  public boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent) {
    if (paramKeyEvent == null)
      throw new IllegalArgumentException("KeyEvent may not be null"); 
    return this.mImpl.dispatchMediaButtonEvent(paramKeyEvent);
  }
  
  public Bundle getExtras() {
    return this.mImpl.getExtras();
  }
  
  public long getFlags() {
    return this.mImpl.getFlags();
  }
  
  public Object getMediaController() {
    return this.mImpl.getMediaController();
  }
  
  public MediaMetadataCompat getMetadata() {
    return this.mImpl.getMetadata();
  }
  
  public String getPackageName() {
    return this.mImpl.getPackageName();
  }
  
  public MediaControllerCompat$PlaybackInfo getPlaybackInfo() {
    return this.mImpl.getPlaybackInfo();
  }
  
  public PlaybackStateCompat getPlaybackState() {
    return this.mImpl.getPlaybackState();
  }
  
  public List<MediaSessionCompat$QueueItem> getQueue() {
    return this.mImpl.getQueue();
  }
  
  public CharSequence getQueueTitle() {
    return this.mImpl.getQueueTitle();
  }
  
  public int getRatingType() {
    return this.mImpl.getRatingType();
  }
  
  public int getRepeatMode() {
    return this.mImpl.getRepeatMode();
  }
  
  public PendingIntent getSessionActivity() {
    return this.mImpl.getSessionActivity();
  }
  
  public MediaSessionCompat$Token getSessionToken() {
    return this.mToken;
  }
  
  public MediaControllerCompat$TransportControls getTransportControls() {
    return this.mImpl.getTransportControls();
  }
  
  @VisibleForTesting
  boolean isExtraBinderReady() {
    return (this.mImpl instanceof MediaControllerCompat$MediaControllerImplApi21) ? ((MediaControllerCompat$MediaControllerImplApi21.access$000((MediaControllerCompat$MediaControllerImplApi21)this.mImpl) != null)) : false;
  }
  
  public boolean isShuffleModeEnabled() {
    return this.mImpl.isShuffleModeEnabled();
  }
  
  public void registerCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback) {
    registerCallback(paramMediaControllerCompat$Callback, null);
  }
  
  public void registerCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback, Handler paramHandler) {
    if (paramMediaControllerCompat$Callback == null)
      throw new IllegalArgumentException("callback cannot be null"); 
    Handler handler = paramHandler;
    if (paramHandler == null)
      handler = new Handler(); 
    this.mImpl.registerCallback(paramMediaControllerCompat$Callback, handler);
  }
  
  public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    this.mImpl.removeQueueItem(paramMediaDescriptionCompat);
  }
  
  public void removeQueueItemAt(int paramInt) {
    this.mImpl.removeQueueItemAt(paramInt);
  }
  
  public void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("command cannot be null or empty"); 
    this.mImpl.sendCommand(paramString, paramBundle, paramResultReceiver);
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2) {
    this.mImpl.setVolumeTo(paramInt1, paramInt2);
  }
  
  public void unregisterCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback) {
    if (paramMediaControllerCompat$Callback == null)
      throw new IllegalArgumentException("callback cannot be null"); 
    this.mImpl.unregisterCallback(paramMediaControllerCompat$Callback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */