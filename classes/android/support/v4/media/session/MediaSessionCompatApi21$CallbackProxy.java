package android.support.v4.media.session;

import android.content.Intent;
import android.media.Rating;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.ResultReceiver;

class MediaSessionCompatApi21$CallbackProxy<T extends MediaSessionCompatApi21$Callback> extends MediaSession.Callback {
  protected final T mCallback;
  
  public MediaSessionCompatApi21$CallbackProxy(T paramT) {
    this.mCallback = paramT;
  }
  
  public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {
    this.mCallback.onCommand(paramString, paramBundle, paramResultReceiver);
  }
  
  public void onCustomAction(String paramString, Bundle paramBundle) {
    this.mCallback.onCustomAction(paramString, paramBundle);
  }
  
  public void onFastForward() {
    this.mCallback.onFastForward();
  }
  
  public boolean onMediaButtonEvent(Intent paramIntent) {
    return (this.mCallback.onMediaButtonEvent(paramIntent) || super.onMediaButtonEvent(paramIntent));
  }
  
  public void onPause() {
    this.mCallback.onPause();
  }
  
  public void onPlay() {
    this.mCallback.onPlay();
  }
  
  public void onPlayFromMediaId(String paramString, Bundle paramBundle) {
    this.mCallback.onPlayFromMediaId(paramString, paramBundle);
  }
  
  public void onPlayFromSearch(String paramString, Bundle paramBundle) {
    this.mCallback.onPlayFromSearch(paramString, paramBundle);
  }
  
  public void onRewind() {
    this.mCallback.onRewind();
  }
  
  public void onSeekTo(long paramLong) {
    this.mCallback.onSeekTo(paramLong);
  }
  
  public void onSetRating(Rating paramRating) {
    this.mCallback.onSetRating(paramRating);
  }
  
  public void onSkipToNext() {
    this.mCallback.onSkipToNext();
  }
  
  public void onSkipToPrevious() {
    this.mCallback.onSkipToPrevious();
  }
  
  public void onSkipToQueueItem(long paramLong) {
    this.mCallback.onSkipToQueueItem(paramLong);
  }
  
  public void onStop() {
    this.mCallback.onStop();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi21$CallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */