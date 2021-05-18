package android.support.v4.media.session;

import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

class MediaControllerCompat$Callback$StubCompat extends IMediaControllerCallback$Stub {
  public void onEvent(String paramString, Bundle paramBundle) {
    MediaControllerCompat$Callback.this.mHandler.post(1, paramString, paramBundle);
  }
  
  public void onExtrasChanged(Bundle paramBundle) {
    MediaControllerCompat$Callback.this.mHandler.post(7, paramBundle, null);
  }
  
  public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat) {
    MediaControllerCompat$Callback.this.mHandler.post(3, paramMediaMetadataCompat, null);
  }
  
  public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat) {
    MediaControllerCompat$Callback.this.mHandler.post(2, paramPlaybackStateCompat, null);
  }
  
  public void onQueueChanged(List<MediaSessionCompat$QueueItem> paramList) {
    MediaControllerCompat$Callback.this.mHandler.post(5, paramList, null);
  }
  
  public void onQueueTitleChanged(CharSequence paramCharSequence) {
    MediaControllerCompat$Callback.this.mHandler.post(6, paramCharSequence, null);
  }
  
  public void onRepeatModeChanged(int paramInt) {
    MediaControllerCompat$Callback.this.mHandler.post(9, Integer.valueOf(paramInt), null);
  }
  
  public void onSessionDestroyed() {
    MediaControllerCompat$Callback.this.mHandler.post(8, null, null);
  }
  
  public void onShuffleModeChanged(boolean paramBoolean) {
    MediaControllerCompat$Callback.this.mHandler.post(10, Boolean.valueOf(paramBoolean), null);
  }
  
  public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo) {
    if (paramParcelableVolumeInfo != null) {
      MediaControllerCompat$PlaybackInfo mediaControllerCompat$PlaybackInfo = new MediaControllerCompat$PlaybackInfo(paramParcelableVolumeInfo.volumeType, paramParcelableVolumeInfo.audioStream, paramParcelableVolumeInfo.controlType, paramParcelableVolumeInfo.maxVolume, paramParcelableVolumeInfo.currentVolume);
    } else {
      paramParcelableVolumeInfo = null;
    } 
    MediaControllerCompat$Callback.this.mHandler.post(4, paramParcelableVolumeInfo, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$Callback$StubCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */