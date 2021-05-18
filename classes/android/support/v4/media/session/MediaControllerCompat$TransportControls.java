package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.RatingCompat;

public abstract class MediaControllerCompat$TransportControls {
  public abstract void fastForward();
  
  public abstract void pause();
  
  public abstract void play();
  
  public abstract void playFromMediaId(String paramString, Bundle paramBundle);
  
  public abstract void playFromSearch(String paramString, Bundle paramBundle);
  
  public abstract void playFromUri(Uri paramUri, Bundle paramBundle);
  
  public abstract void prepare();
  
  public abstract void prepareFromMediaId(String paramString, Bundle paramBundle);
  
  public abstract void prepareFromSearch(String paramString, Bundle paramBundle);
  
  public abstract void prepareFromUri(Uri paramUri, Bundle paramBundle);
  
  public abstract void rewind();
  
  public abstract void seekTo(long paramLong);
  
  public abstract void sendCustomAction(PlaybackStateCompat$CustomAction paramPlaybackStateCompat$CustomAction, Bundle paramBundle);
  
  public abstract void sendCustomAction(String paramString, Bundle paramBundle);
  
  public abstract void setRating(RatingCompat paramRatingCompat);
  
  public abstract void setRepeatMode(int paramInt);
  
  public abstract void setShuffleModeEnabled(boolean paramBoolean);
  
  public abstract void skipToNext();
  
  public abstract void skipToPrevious();
  
  public abstract void skipToQueueItem(long paramLong);
  
  public abstract void stop();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$TransportControls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */