package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.view.KeyEvent;
import java.util.List;

interface MediaControllerCompat$MediaControllerImpl {
  void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat);
  
  void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt);
  
  void adjustVolume(int paramInt1, int paramInt2);
  
  boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent);
  
  Bundle getExtras();
  
  long getFlags();
  
  Object getMediaController();
  
  MediaMetadataCompat getMetadata();
  
  String getPackageName();
  
  MediaControllerCompat$PlaybackInfo getPlaybackInfo();
  
  PlaybackStateCompat getPlaybackState();
  
  List<MediaSessionCompat$QueueItem> getQueue();
  
  CharSequence getQueueTitle();
  
  int getRatingType();
  
  int getRepeatMode();
  
  PendingIntent getSessionActivity();
  
  MediaControllerCompat$TransportControls getTransportControls();
  
  boolean isShuffleModeEnabled();
  
  void registerCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback, Handler paramHandler);
  
  void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat);
  
  void removeQueueItemAt(int paramInt);
  
  void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver);
  
  void setVolumeTo(int paramInt1, int paramInt2);
  
  void unregisterCallback(MediaControllerCompat$Callback paramMediaControllerCompat$Callback);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$MediaControllerImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */