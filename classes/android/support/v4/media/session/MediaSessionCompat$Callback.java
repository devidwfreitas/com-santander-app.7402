package android.support.v4.media.session;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.RatingCompat;
import java.lang.ref.WeakReference;

public abstract class MediaSessionCompat$Callback {
  final Object mCallbackObj;
  
  WeakReference<MediaSessionCompat$MediaSessionImpl> mSessionImpl;
  
  public MediaSessionCompat$Callback() {
    if (Build.VERSION.SDK_INT >= 24) {
      this.mCallbackObj = MediaSessionCompatApi24.createCallback(new MediaSessionCompat$Callback$StubApi24(this));
      return;
    } 
    if (Build.VERSION.SDK_INT >= 23) {
      this.mCallbackObj = MediaSessionCompatApi23.createCallback(new MediaSessionCompat$Callback$StubApi23(this));
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      this.mCallbackObj = MediaSessionCompatApi21.createCallback(new MediaSessionCompat$Callback$StubApi21(this));
      return;
    } 
    this.mCallbackObj = null;
  }
  
  public void onAddQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {}
  
  public void onAddQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {}
  
  public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {}
  
  public void onCustomAction(String paramString, Bundle paramBundle) {}
  
  public void onFastForward() {}
  
  public boolean onMediaButtonEvent(Intent paramIntent) {
    return false;
  }
  
  public void onPause() {}
  
  public void onPlay() {}
  
  public void onPlayFromMediaId(String paramString, Bundle paramBundle) {}
  
  public void onPlayFromSearch(String paramString, Bundle paramBundle) {}
  
  public void onPlayFromUri(Uri paramUri, Bundle paramBundle) {}
  
  public void onPrepare() {}
  
  public void onPrepareFromMediaId(String paramString, Bundle paramBundle) {}
  
  public void onPrepareFromSearch(String paramString, Bundle paramBundle) {}
  
  public void onPrepareFromUri(Uri paramUri, Bundle paramBundle) {}
  
  public void onRemoveQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {}
  
  public void onRemoveQueueItemAt(int paramInt) {}
  
  public void onRewind() {}
  
  public void onSeekTo(long paramLong) {}
  
  public void onSetRating(RatingCompat paramRatingCompat) {}
  
  public void onSetRepeatMode(int paramInt) {}
  
  public void onSetShuffleModeEnabled(boolean paramBoolean) {}
  
  public void onSkipToNext() {}
  
  public void onSkipToPrevious() {}
  
  public void onSkipToQueueItem(long paramLong) {}
  
  public void onStop() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */