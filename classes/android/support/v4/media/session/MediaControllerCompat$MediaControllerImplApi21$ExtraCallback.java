package android.support.v4.media.session;

import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

class MediaControllerCompat$MediaControllerImplApi21$ExtraCallback extends IMediaControllerCallback$Stub {
  private MediaControllerCompat$Callback mCallback;
  
  MediaControllerCompat$MediaControllerImplApi21$ExtraCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback) {
    this.mCallback = paramMediaControllerCompat$Callback;
  }
  
  public void onEvent(String paramString, Bundle paramBundle) {
    this.mCallback.mHandler.post(new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1(this, paramString, paramBundle));
  }
  
  public void onExtrasChanged(Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat) {
    throw new AssertionError();
  }
  
  public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat) {
    this.mCallback.mHandler.post(new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2(this, paramPlaybackStateCompat));
  }
  
  public void onQueueChanged(List<MediaSessionCompat$QueueItem> paramList) {
    throw new AssertionError();
  }
  
  public void onQueueTitleChanged(CharSequence paramCharSequence) {
    throw new AssertionError();
  }
  
  public void onRepeatModeChanged(int paramInt) {
    this.mCallback.mHandler.post(new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$3(this, paramInt));
  }
  
  public void onSessionDestroyed() {
    throw new AssertionError();
  }
  
  public void onShuffleModeChanged(boolean paramBoolean) {
    this.mCallback.mHandler.post(new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4(this, paramBoolean));
  }
  
  public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo) {
    throw new AssertionError();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$MediaControllerImplApi21$ExtraCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */