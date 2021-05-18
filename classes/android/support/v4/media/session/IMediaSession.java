package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.view.KeyEvent;
import java.util.List;

public interface IMediaSession extends IInterface {
  void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat);
  
  void addQueueItemAt(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt);
  
  void adjustVolume(int paramInt1, int paramInt2, String paramString);
  
  void fastForward();
  
  Bundle getExtras();
  
  long getFlags();
  
  PendingIntent getLaunchPendingIntent();
  
  MediaMetadataCompat getMetadata();
  
  String getPackageName();
  
  PlaybackStateCompat getPlaybackState();
  
  List<MediaSessionCompat$QueueItem> getQueue();
  
  CharSequence getQueueTitle();
  
  int getRatingType();
  
  int getRepeatMode();
  
  String getTag();
  
  ParcelableVolumeInfo getVolumeAttributes();
  
  boolean isShuffleModeEnabled();
  
  boolean isTransportControlEnabled();
  
  void next();
  
  void pause();
  
  void play();
  
  void playFromMediaId(String paramString, Bundle paramBundle);
  
  void playFromSearch(String paramString, Bundle paramBundle);
  
  void playFromUri(Uri paramUri, Bundle paramBundle);
  
  void prepare();
  
  void prepareFromMediaId(String paramString, Bundle paramBundle);
  
  void prepareFromSearch(String paramString, Bundle paramBundle);
  
  void prepareFromUri(Uri paramUri, Bundle paramBundle);
  
  void previous();
  
  void rate(RatingCompat paramRatingCompat);
  
  void registerCallbackListener(IMediaControllerCallback paramIMediaControllerCallback);
  
  void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat);
  
  void removeQueueItemAt(int paramInt);
  
  void rewind();
  
  void seekTo(long paramLong);
  
  void sendCommand(String paramString, Bundle paramBundle, MediaSessionCompat$ResultReceiverWrapper paramMediaSessionCompat$ResultReceiverWrapper);
  
  void sendCustomAction(String paramString, Bundle paramBundle);
  
  boolean sendMediaButton(KeyEvent paramKeyEvent);
  
  void setRepeatMode(int paramInt);
  
  void setShuffleModeEnabled(boolean paramBoolean);
  
  void setVolumeTo(int paramInt1, int paramInt2, String paramString);
  
  void skipToQueueItem(long paramLong);
  
  void stop();
  
  void unregisterCallbackListener(IMediaControllerCallback paramIMediaControllerCallback);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\IMediaSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */