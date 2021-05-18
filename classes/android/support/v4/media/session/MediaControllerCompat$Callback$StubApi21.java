package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

class MediaControllerCompat$Callback$StubApi21 implements MediaControllerCompatApi21$Callback {
  public void onAudioInfoChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    MediaControllerCompat$Callback.this.onAudioInfoChanged(new MediaControllerCompat$PlaybackInfo(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5));
  }
  
  public void onExtrasChanged(Bundle paramBundle) {
    MediaControllerCompat$Callback.this.onExtrasChanged(paramBundle);
  }
  
  public void onMetadataChanged(Object paramObject) {
    MediaControllerCompat$Callback.this.onMetadataChanged(MediaMetadataCompat.fromMediaMetadata(paramObject));
  }
  
  public void onPlaybackStateChanged(Object paramObject) {
    if (MediaControllerCompat$Callback.this.mHasExtraCallback)
      return; 
    MediaControllerCompat$Callback.this.onPlaybackStateChanged(PlaybackStateCompat.fromPlaybackState(paramObject));
  }
  
  public void onQueueChanged(List<?> paramList) {
    MediaControllerCompat$Callback.this.onQueueChanged(MediaSessionCompat$QueueItem.fromQueueItemList(paramList));
  }
  
  public void onQueueTitleChanged(CharSequence paramCharSequence) {
    MediaControllerCompat$Callback.this.onQueueTitleChanged(paramCharSequence);
  }
  
  public void onSessionDestroyed() {
    MediaControllerCompat$Callback.this.onSessionDestroyed();
  }
  
  public void onSessionEvent(String paramString, Bundle paramBundle) {
    if (MediaControllerCompat$Callback.this.mHasExtraCallback && Build.VERSION.SDK_INT < 23)
      return; 
    MediaControllerCompat$Callback.this.onSessionEvent(paramString, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$Callback$StubApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */