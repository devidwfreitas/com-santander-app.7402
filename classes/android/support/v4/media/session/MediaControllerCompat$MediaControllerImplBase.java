package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;

class MediaControllerCompat$MediaControllerImplBase implements MediaControllerCompat$MediaControllerImpl {
  private IMediaSession mBinder;
  
  private MediaSessionCompat$Token mToken;
  
  private MediaControllerCompat$TransportControls mTransportControls;
  
  public MediaControllerCompat$MediaControllerImplBase(MediaSessionCompat$Token paramMediaSessionCompat$Token) {
    this.mToken = paramMediaSessionCompat$Token;
    this.mBinder = IMediaSession$Stub.asInterface((IBinder)paramMediaSessionCompat$Token.getToken());
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    try {
      if ((this.mBinder.getFlags() & 0x4L) == 0L)
        throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in addQueueItem.", (Throwable)remoteException);
      return;
    } 
    this.mBinder.addQueueItem((MediaDescriptionCompat)remoteException);
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {
    try {
      if ((this.mBinder.getFlags() & 0x4L) == 0L)
        throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in addQueueItemAt.", (Throwable)remoteException);
      return;
    } 
    this.mBinder.addQueueItemAt((MediaDescriptionCompat)remoteException, paramInt);
  }
  
  public void adjustVolume(int paramInt1, int paramInt2) {
    try {
      this.mBinder.adjustVolume(paramInt1, paramInt2, (String)null);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in adjustVolume.", (Throwable)remoteException);
      return;
    } 
  }
  
  public boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent) {
    if (paramKeyEvent == null)
      throw new IllegalArgumentException("event may not be null."); 
    try {
      this.mBinder.sendMediaButton(paramKeyEvent);
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", (Throwable)remoteException);
    } 
    return false;
  }
  
  public Bundle getExtras() {
    try {
      return this.mBinder.getExtras();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getExtras.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public long getFlags() {
    try {
      return this.mBinder.getFlags();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getFlags.", (Throwable)remoteException);
      return 0L;
    } 
  }
  
  public Object getMediaController() {
    return null;
  }
  
  public MediaMetadataCompat getMetadata() {
    try {
      return this.mBinder.getMetadata();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getMetadata.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public String getPackageName() {
    try {
      return this.mBinder.getPackageName();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getPackageName.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public MediaControllerCompat$PlaybackInfo getPlaybackInfo() {
    try {
      ParcelableVolumeInfo parcelableVolumeInfo = this.mBinder.getVolumeAttributes();
      return new MediaControllerCompat$PlaybackInfo(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume);
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getPlaybackInfo.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public PlaybackStateCompat getPlaybackState() {
    try {
      return this.mBinder.getPlaybackState();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public List<MediaSessionCompat$QueueItem> getQueue() {
    try {
      return this.mBinder.getQueue();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getQueue.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public CharSequence getQueueTitle() {
    try {
      return this.mBinder.getQueueTitle();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getQueueTitle.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public int getRatingType() {
    try {
      return this.mBinder.getRatingType();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getRatingType.", (Throwable)remoteException);
      return 0;
    } 
  }
  
  public int getRepeatMode() {
    try {
      return this.mBinder.getRepeatMode();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", (Throwable)remoteException);
      return 0;
    } 
  }
  
  public PendingIntent getSessionActivity() {
    try {
      return this.mBinder.getLaunchPendingIntent();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in getSessionActivity.", (Throwable)remoteException);
      return null;
    } 
  }
  
  public MediaControllerCompat$TransportControls getTransportControls() {
    if (this.mTransportControls == null)
      this.mTransportControls = new MediaControllerCompat$TransportControlsBase(this.mBinder); 
    return this.mTransportControls;
  }
  
  public boolean isShuffleModeEnabled() {
    try {
      return this.mBinder.isShuffleModeEnabled();
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in isShuffleModeEnabled.", (Throwable)remoteException);
      return false;
    } 
  }
  
  public void registerCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback, Handler paramHandler) {
    if (paramMediaControllerCompat$Callback == null)
      throw new IllegalArgumentException("callback may not be null."); 
    try {
      this.mBinder.asBinder().linkToDeath(paramMediaControllerCompat$Callback, 0);
      this.mBinder.registerCallbackListener((IMediaControllerCallback)MediaControllerCompat$Callback.access$100(paramMediaControllerCompat$Callback));
      MediaControllerCompat$Callback.access$200(paramMediaControllerCompat$Callback, paramHandler);
      paramMediaControllerCompat$Callback.mRegistered = true;
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in registerCallback.", (Throwable)remoteException);
      paramMediaControllerCompat$Callback.onSessionDestroyed();
      return;
    } 
  }
  
  public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    try {
      if ((this.mBinder.getFlags() & 0x4L) == 0L)
        throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in removeQueueItem.", (Throwable)remoteException);
      return;
    } 
    this.mBinder.removeQueueItem((MediaDescriptionCompat)remoteException);
  }
  
  public void removeQueueItemAt(int paramInt) {
    try {
      if ((this.mBinder.getFlags() & 0x4L) == 0L)
        throw new UnsupportedOperationException("This session doesn't support queue management operations"); 
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in removeQueueItemAt.", (Throwable)remoteException);
      return;
    } 
    this.mBinder.removeQueueItemAt(paramInt);
  }
  
  public void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {
    try {
      this.mBinder.sendCommand(paramString, paramBundle, new MediaSessionCompat$ResultReceiverWrapper(paramResultReceiver));
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in sendCommand.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2) {
    try {
      this.mBinder.setVolumeTo(paramInt1, paramInt2, (String)null);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in setVolumeTo.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void unregisterCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback) {
    if (paramMediaControllerCompat$Callback == null)
      throw new IllegalArgumentException("callback may not be null."); 
    try {
      this.mBinder.unregisterCallbackListener((IMediaControllerCallback)MediaControllerCompat$Callback.access$100(paramMediaControllerCompat$Callback));
      this.mBinder.asBinder().unlinkToDeath(paramMediaControllerCompat$Callback, 0);
      paramMediaControllerCompat$Callback.mRegistered = false;
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", (Throwable)remoteException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$MediaControllerImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */