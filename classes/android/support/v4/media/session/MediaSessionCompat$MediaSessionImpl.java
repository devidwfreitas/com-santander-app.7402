package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;
import java.util.List;

interface MediaSessionCompat$MediaSessionImpl {
  String getCallingPackage();
  
  Object getMediaSession();
  
  Object getRemoteControlClient();
  
  MediaSessionCompat$Token getSessionToken();
  
  boolean isActive();
  
  void release();
  
  void sendSessionEvent(String paramString, Bundle paramBundle);
  
  void setActive(boolean paramBoolean);
  
  void setCallback(MediaSessionCompat$Callback paramMediaSessionCompat$Callback, Handler paramHandler);
  
  void setExtras(Bundle paramBundle);
  
  void setFlags(int paramInt);
  
  void setMediaButtonReceiver(PendingIntent paramPendingIntent);
  
  void setMetadata(MediaMetadataCompat paramMediaMetadataCompat);
  
  void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat);
  
  void setPlaybackToLocal(int paramInt);
  
  void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat);
  
  void setQueue(List<MediaSessionCompat$QueueItem> paramList);
  
  void setQueueTitle(CharSequence paramCharSequence);
  
  void setRatingType(int paramInt);
  
  void setRepeatMode(int paramInt);
  
  void setSessionActivity(PendingIntent paramPendingIntent);
  
  void setShuffleModeEnabled(boolean paramBoolean);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */