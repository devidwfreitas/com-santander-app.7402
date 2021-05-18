package android.support.v4.media.session;

import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;

class MediaControllerCompatApi21$CallbackProxy<T extends MediaControllerCompatApi21$Callback> extends MediaController.Callback {
  protected final T mCallback;
  
  public MediaControllerCompatApi21$CallbackProxy(T paramT) {
    this.mCallback = paramT;
  }
  
  public void onAudioInfoChanged(MediaController.PlaybackInfo paramPlaybackInfo) {
    this.mCallback.onAudioInfoChanged(paramPlaybackInfo.getPlaybackType(), MediaControllerCompatApi21$PlaybackInfo.getLegacyAudioStream(paramPlaybackInfo), paramPlaybackInfo.getVolumeControl(), paramPlaybackInfo.getMaxVolume(), paramPlaybackInfo.getCurrentVolume());
  }
  
  public void onExtrasChanged(Bundle paramBundle) {
    this.mCallback.onExtrasChanged(paramBundle);
  }
  
  public void onMetadataChanged(MediaMetadata paramMediaMetadata) {
    this.mCallback.onMetadataChanged(paramMediaMetadata);
  }
  
  public void onPlaybackStateChanged(PlaybackState paramPlaybackState) {
    this.mCallback.onPlaybackStateChanged(paramPlaybackState);
  }
  
  public void onQueueChanged(List<MediaSession.QueueItem> paramList) {
    this.mCallback.onQueueChanged(paramList);
  }
  
  public void onQueueTitleChanged(CharSequence paramCharSequence) {
    this.mCallback.onQueueTitleChanged(paramCharSequence);
  }
  
  public void onSessionDestroyed() {
    this.mCallback.onSessionDestroyed();
  }
  
  public void onSessionEvent(String paramString, Bundle paramBundle) {
    this.mCallback.onSessionEvent(paramString, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompatApi21$CallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */