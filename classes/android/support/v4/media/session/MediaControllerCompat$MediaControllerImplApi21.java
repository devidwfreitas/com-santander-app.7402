package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

class MediaControllerCompat$MediaControllerImplApi21 implements MediaControllerCompat$MediaControllerImpl {
  private HashMap<MediaControllerCompat$Callback, MediaControllerCompat$MediaControllerImplApi21$ExtraCallback> mCallbackMap = new HashMap<MediaControllerCompat$Callback, MediaControllerCompat$MediaControllerImplApi21$ExtraCallback>();
  
  protected final Object mControllerObj;
  
  private IMediaSession mExtraBinder;
  
  private List<MediaControllerCompat$Callback> mPendingCallbacks = new ArrayList<MediaControllerCompat$Callback>();
  
  public MediaControllerCompat$MediaControllerImplApi21(Context paramContext, MediaSessionCompat$Token paramMediaSessionCompat$Token) {
    this.mControllerObj = MediaControllerCompatApi21.fromToken(paramContext, paramMediaSessionCompat$Token.getToken());
    if (this.mControllerObj == null)
      throw new RemoteException(); 
    requestExtraBinder();
  }
  
  public MediaControllerCompat$MediaControllerImplApi21(Context paramContext, MediaSessionCompat paramMediaSessionCompat) {
    this.mControllerObj = MediaControllerCompatApi21.fromToken(paramContext, paramMediaSessionCompat.getSessionToken().getToken());
    requestExtraBinder();
  }
  
  private void processPendingCallbacks() {
    if (this.mExtraBinder == null)
      return; 
    synchronized (this.mPendingCallbacks) {
      Iterator<MediaControllerCompat$Callback> iterator = this.mPendingCallbacks.iterator();
      while (true) {
        if (iterator.hasNext()) {
          MediaControllerCompat$Callback mediaControllerCompat$Callback = iterator.next();
          MediaControllerCompat$MediaControllerImplApi21$ExtraCallback mediaControllerCompat$MediaControllerImplApi21$ExtraCallback = new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback(this, mediaControllerCompat$Callback);
          this.mCallbackMap.put(mediaControllerCompat$Callback, mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
          mediaControllerCompat$Callback.mHasExtraCallback = true;
          try {
            this.mExtraBinder.registerCallbackListener(mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
            continue;
          } catch (RemoteException remoteException) {
            Log.e("MediaControllerCompat", "Dead object in registerCallback.", (Throwable)remoteException);
          } 
        } else {
          break;
        } 
        this.mPendingCallbacks.clear();
        return;
      } 
      this.mPendingCallbacks.clear();
      return;
    } 
  }
  
  private void requestExtraBinder() {
    sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver(this, new Handler()));
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    if ((getFlags() & 0x4L) == 0L)
      throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    Bundle bundle = new Bundle();
    bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", (Parcelable)paramMediaDescriptionCompat);
    sendCommand("android.support.v4.media.session.command.ADD_QUEUE_ITEM", bundle, null);
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {
    if ((getFlags() & 0x4L) == 0L)
      throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    Bundle bundle = new Bundle();
    bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", (Parcelable)paramMediaDescriptionCompat);
    bundle.putInt("android.support.v4.media.session.command.ARGUMENT_INDEX", paramInt);
    sendCommand("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT", bundle, null);
  }
  
  public void adjustVolume(int paramInt1, int paramInt2) {
    MediaControllerCompatApi21.adjustVolume(this.mControllerObj, paramInt1, paramInt2);
  }
  
  public boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent) {
    return MediaControllerCompatApi21.dispatchMediaButtonEvent(this.mControllerObj, paramKeyEvent);
  }
  
  public Bundle getExtras() {
    return MediaControllerCompatApi21.getExtras(this.mControllerObj);
  }
  
  public long getFlags() {
    return MediaControllerCompatApi21.getFlags(this.mControllerObj);
  }
  
  public Object getMediaController() {
    return this.mControllerObj;
  }
  
  public MediaMetadataCompat getMetadata() {
    Object object = MediaControllerCompatApi21.getMetadata(this.mControllerObj);
    return (object != null) ? MediaMetadataCompat.fromMediaMetadata(object) : null;
  }
  
  public String getPackageName() {
    return MediaControllerCompatApi21.getPackageName(this.mControllerObj);
  }
  
  public MediaControllerCompat$PlaybackInfo getPlaybackInfo() {
    Object object = MediaControllerCompatApi21.getPlaybackInfo(this.mControllerObj);
    return (object != null) ? new MediaControllerCompat$PlaybackInfo(MediaControllerCompatApi21$PlaybackInfo.getPlaybackType(object), MediaControllerCompatApi21$PlaybackInfo.getLegacyAudioStream(object), MediaControllerCompatApi21$PlaybackInfo.getVolumeControl(object), MediaControllerCompatApi21$PlaybackInfo.getMaxVolume(object), MediaControllerCompatApi21$PlaybackInfo.getCurrentVolume(object)) : null;
  }
  
  public PlaybackStateCompat getPlaybackState() {
    if (this.mExtraBinder != null)
      try {
        return this.mExtraBinder.getPlaybackState();
      } catch (RemoteException remoteException) {
        Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", (Throwable)remoteException);
      }  
    Object object = MediaControllerCompatApi21.getPlaybackState(this.mControllerObj);
    return (object != null) ? PlaybackStateCompat.fromPlaybackState(object) : null;
  }
  
  public List<MediaSessionCompat$QueueItem> getQueue() {
    List<Object> list = MediaControllerCompatApi21.getQueue(this.mControllerObj);
    return (list != null) ? MediaSessionCompat$QueueItem.fromQueueItemList(list) : null;
  }
  
  public CharSequence getQueueTitle() {
    return MediaControllerCompatApi21.getQueueTitle(this.mControllerObj);
  }
  
  public int getRatingType() {
    if (Build.VERSION.SDK_INT < 22 && this.mExtraBinder != null)
      try {
        return this.mExtraBinder.getRatingType();
      } catch (RemoteException remoteException) {
        Log.e("MediaControllerCompat", "Dead object in getRatingType.", (Throwable)remoteException);
      }  
    return MediaControllerCompatApi21.getRatingType(this.mControllerObj);
  }
  
  public int getRepeatMode() {
    if (this.mExtraBinder != null)
      try {
        return this.mExtraBinder.getRepeatMode();
      } catch (RemoteException remoteException) {
        Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", (Throwable)remoteException);
      }  
    return 0;
  }
  
  public PendingIntent getSessionActivity() {
    return MediaControllerCompatApi21.getSessionActivity(this.mControllerObj);
  }
  
  public MediaControllerCompat$TransportControls getTransportControls() {
    Object object = MediaControllerCompatApi21.getTransportControls(this.mControllerObj);
    return (object != null) ? new MediaControllerCompat$TransportControlsApi21(object) : null;
  }
  
  public boolean isShuffleModeEnabled() {
    if (this.mExtraBinder != null)
      try {
        return this.mExtraBinder.isShuffleModeEnabled();
      } catch (RemoteException remoteException) {
        Log.e("MediaControllerCompat", "Dead object in isShuffleModeEnabled.", (Throwable)remoteException);
      }  
    return false;
  }
  
  public final void registerCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback, Handler paramHandler) {
    MediaControllerCompat$MediaControllerImplApi21$ExtraCallback mediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    MediaControllerCompatApi21.registerCallback(this.mControllerObj, MediaControllerCompat$Callback.access$100(paramMediaControllerCompat$Callback), paramHandler);
    if (this.mExtraBinder != null) {
      MediaControllerCompat$Callback.access$200(paramMediaControllerCompat$Callback, paramHandler);
      mediaControllerCompat$MediaControllerImplApi21$ExtraCallback = new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback(this, paramMediaControllerCompat$Callback);
      this.mCallbackMap.put(paramMediaControllerCompat$Callback, mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
      paramMediaControllerCompat$Callback.mHasExtraCallback = true;
      try {
        this.mExtraBinder.registerCallbackListener(mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
        return;
      } catch (RemoteException null) {
        Log.e("MediaControllerCompat", "Dead object in registerCallback.", (Throwable)null);
        return;
      } 
    } 
    MediaControllerCompat$Callback.access$200((MediaControllerCompat$Callback)null, (Handler)mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
    synchronized (this.mPendingCallbacks) {
      this.mPendingCallbacks.add(null);
      return;
    } 
  }
  
  public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    if ((getFlags() & 0x4L) == 0L)
      throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    Bundle bundle = new Bundle();
    bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", (Parcelable)paramMediaDescriptionCompat);
    sendCommand("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM", bundle, null);
  }
  
  public void removeQueueItemAt(int paramInt) {
    if ((getFlags() & 0x4L) == 0L)
      throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    Bundle bundle = new Bundle();
    bundle.putInt("android.support.v4.media.session.command.ARGUMENT_INDEX", paramInt);
    sendCommand("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT", bundle, null);
  }
  
  public void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {
    MediaControllerCompatApi21.sendCommand(this.mControllerObj, paramString, paramBundle, paramResultReceiver);
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2) {
    MediaControllerCompatApi21.setVolumeTo(this.mControllerObj, paramInt1, paramInt2);
  }
  
  public final void unregisterCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback) {
    MediaControllerCompatApi21.unregisterCallback(this.mControllerObj, MediaControllerCompat$Callback.access$100(paramMediaControllerCompat$Callback));
    if (this.mExtraBinder != null)
      try {
        MediaControllerCompat$MediaControllerImplApi21$ExtraCallback mediaControllerCompat$MediaControllerImplApi21$ExtraCallback = this.mCallbackMap.remove(paramMediaControllerCompat$Callback);
        if (mediaControllerCompat$MediaControllerImplApi21$ExtraCallback != null)
          this.mExtraBinder.unregisterCallbackListener(mediaControllerCompat$MediaControllerImplApi21$ExtraCallback); 
        return;
      } catch (RemoteException null) {
        Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", (Throwable)null);
        return;
      }  
    synchronized (this.mPendingCallbacks) {
      this.mPendingCallbacks.remove(null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$MediaControllerImplApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */