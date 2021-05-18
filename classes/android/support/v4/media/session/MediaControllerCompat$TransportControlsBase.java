package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.RatingCompat;
import android.util.Log;

class MediaControllerCompat$TransportControlsBase extends MediaControllerCompat$TransportControls {
  private IMediaSession mBinder;
  
  public MediaControllerCompat$TransportControlsBase(IMediaSession paramIMediaSession) {
    this.mBinder = paramIMediaSession;
  }
  
  public void fastForward() {
    try {
      this.mBinder.fastForward();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in fastForward.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void pause() {
    try {
      this.mBinder.pause();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in pause.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void play() {
    try {
      this.mBinder.play();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in play.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void playFromMediaId(String paramString, Bundle paramBundle) {
    try {
      this.mBinder.playFromMediaId(paramString, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in playFromMediaId.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void playFromSearch(String paramString, Bundle paramBundle) {
    try {
      this.mBinder.playFromSearch(paramString, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in playFromSearch.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void playFromUri(Uri paramUri, Bundle paramBundle) {
    try {
      this.mBinder.playFromUri(paramUri, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in playFromUri.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void prepare() {
    try {
      this.mBinder.prepare();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in prepare.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void prepareFromMediaId(String paramString, Bundle paramBundle) {
    try {
      this.mBinder.prepareFromMediaId(paramString, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in prepareFromMediaId.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void prepareFromSearch(String paramString, Bundle paramBundle) {
    try {
      this.mBinder.prepareFromSearch(paramString, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in prepareFromSearch.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void prepareFromUri(Uri paramUri, Bundle paramBundle) {
    try {
      this.mBinder.prepareFromUri(paramUri, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in prepareFromUri.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void rewind() {
    try {
      this.mBinder.rewind();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in rewind.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void seekTo(long paramLong) {
    try {
      this.mBinder.seekTo(paramLong);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in seekTo.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void sendCustomAction(PlaybackStateCompat$CustomAction paramPlaybackStateCompat$CustomAction, Bundle paramBundle) {
    sendCustomAction(paramPlaybackStateCompat$CustomAction.getAction(), paramBundle);
  }
  
  public void sendCustomAction(String paramString, Bundle paramBundle) {
    try {
      this.mBinder.sendCustomAction(paramString, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in sendCustomAction.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void setRating(RatingCompat paramRatingCompat) {
    try {
      this.mBinder.rate(paramRatingCompat);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in setRating.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void setRepeatMode(int paramInt) {
    try {
      this.mBinder.setRepeatMode(paramInt);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in setRepeatMode.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    try {
      this.mBinder.setShuffleModeEnabled(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in setShuffleModeEnabled.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void skipToNext() {
    try {
      this.mBinder.next();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in skipToNext.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void skipToPrevious() {
    try {
      this.mBinder.previous();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in skipToPrevious.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void skipToQueueItem(long paramLong) {
    try {
      this.mBinder.skipToQueueItem(paramLong);
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in skipToQueueItem.", (Throwable)remoteException);
      return;
    } 
  }
  
  public void stop() {
    try {
      this.mBinder.stop();
      return;
    } catch (RemoteException remoteException) {
      Log.e("MediaControllerCompat", "Dead object in stop.", (Throwable)remoteException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$TransportControlsBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */