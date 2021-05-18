package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

public abstract class MediaControllerCompat$Callback implements IBinder.DeathRecipient {
  private final Object mCallbackObj;
  
  MediaControllerCompat$Callback$MessageHandler mHandler;
  
  boolean mHasExtraCallback;
  
  boolean mRegistered = false;
  
  public MediaControllerCompat$Callback() {
    if (Build.VERSION.SDK_INT >= 21) {
      this.mCallbackObj = MediaControllerCompatApi21.createCallback(new MediaControllerCompat$Callback$StubApi21(this));
      return;
    } 
    this.mCallbackObj = new MediaControllerCompat$Callback$StubCompat(this);
  }
  
  private void setHandler(Handler paramHandler) {
    this.mHandler = new MediaControllerCompat$Callback$MessageHandler(this, paramHandler.getLooper());
  }
  
  public void binderDied() {
    onSessionDestroyed();
  }
  
  public void onAudioInfoChanged(MediaControllerCompat$PlaybackInfo paramMediaControllerCompat$PlaybackInfo) {}
  
  public void onExtrasChanged(Bundle paramBundle) {}
  
  public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat) {}
  
  public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat) {}
  
  public void onQueueChanged(List<MediaSessionCompat$QueueItem> paramList) {}
  
  public void onQueueTitleChanged(CharSequence paramCharSequence) {}
  
  public void onRepeatModeChanged(int paramInt) {}
  
  public void onSessionDestroyed() {}
  
  public void onSessionEvent(String paramString, Bundle paramBundle) {}
  
  public void onShuffleModeChanged(boolean paramBoolean) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */