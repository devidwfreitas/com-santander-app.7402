package android.support.v4.media.session;

import android.os.Bundle;
import android.os.IInterface;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

public interface IMediaControllerCallback extends IInterface {
  void onEvent(String paramString, Bundle paramBundle);
  
  void onExtrasChanged(Bundle paramBundle);
  
  void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat);
  
  void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat);
  
  void onQueueChanged(List<MediaSessionCompat$QueueItem> paramList);
  
  void onQueueTitleChanged(CharSequence paramCharSequence);
  
  void onRepeatModeChanged(int paramInt);
  
  void onSessionDestroyed();
  
  void onShuffleModeChanged(boolean paramBoolean);
  
  void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\IMediaControllerCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */