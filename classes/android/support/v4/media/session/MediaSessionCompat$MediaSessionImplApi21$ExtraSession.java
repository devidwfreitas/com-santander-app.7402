package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.view.KeyEvent;
import java.util.List;

class MediaSessionCompat$MediaSessionImplApi21$ExtraSession extends IMediaSession$Stub {
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    throw new AssertionError();
  }
  
  public void addQueueItemAt(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {
    throw new AssertionError();
  }
  
  public void adjustVolume(int paramInt1, int paramInt2, String paramString) {
    throw new AssertionError();
  }
  
  public void fastForward() {
    throw new AssertionError();
  }
  
  public Bundle getExtras() {
    throw new AssertionError();
  }
  
  public long getFlags() {
    throw new AssertionError();
  }
  
  public PendingIntent getLaunchPendingIntent() {
    throw new AssertionError();
  }
  
  public MediaMetadataCompat getMetadata() {
    throw new AssertionError();
  }
  
  public String getPackageName() {
    throw new AssertionError();
  }
  
  public PlaybackStateCompat getPlaybackState() {
    return MediaSessionCompat$MediaSessionImplApi21.access$300(MediaSessionCompat$MediaSessionImplApi21.this);
  }
  
  public List<MediaSessionCompat$QueueItem> getQueue() {
    return null;
  }
  
  public CharSequence getQueueTitle() {
    throw new AssertionError();
  }
  
  public int getRatingType() {
    return MediaSessionCompat$MediaSessionImplApi21.this.mRatingType;
  }
  
  public int getRepeatMode() {
    return MediaSessionCompat$MediaSessionImplApi21.this.mRepeatMode;
  }
  
  public String getTag() {
    throw new AssertionError();
  }
  
  public ParcelableVolumeInfo getVolumeAttributes() {
    throw new AssertionError();
  }
  
  public boolean isShuffleModeEnabled() {
    return MediaSessionCompat$MediaSessionImplApi21.this.mShuffleModeEnabled;
  }
  
  public boolean isTransportControlEnabled() {
    throw new AssertionError();
  }
  
  public void next() {
    throw new AssertionError();
  }
  
  public void pause() {
    throw new AssertionError();
  }
  
  public void play() {
    throw new AssertionError();
  }
  
  public void playFromMediaId(String paramString, Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public void playFromSearch(String paramString, Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public void playFromUri(Uri paramUri, Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public void prepare() {
    throw new AssertionError();
  }
  
  public void prepareFromMediaId(String paramString, Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public void prepareFromSearch(String paramString, Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public void prepareFromUri(Uri paramUri, Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public void previous() {
    throw new AssertionError();
  }
  
  public void rate(RatingCompat paramRatingCompat) {
    throw new AssertionError();
  }
  
  public void registerCallbackListener(IMediaControllerCallback paramIMediaControllerCallback) {
    if (!MediaSessionCompat$MediaSessionImplApi21.access$100(MediaSessionCompat$MediaSessionImplApi21.this))
      MediaSessionCompat$MediaSessionImplApi21.access$200(MediaSessionCompat$MediaSessionImplApi21.this).register(paramIMediaControllerCallback); 
  }
  
  public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    throw new AssertionError();
  }
  
  public void removeQueueItemAt(int paramInt) {
    throw new AssertionError();
  }
  
  public void rewind() {
    throw new AssertionError();
  }
  
  public void seekTo(long paramLong) {
    throw new AssertionError();
  }
  
  public void sendCommand(String paramString, Bundle paramBundle, MediaSessionCompat$ResultReceiverWrapper paramMediaSessionCompat$ResultReceiverWrapper) {
    throw new AssertionError();
  }
  
  public void sendCustomAction(String paramString, Bundle paramBundle) {
    throw new AssertionError();
  }
  
  public boolean sendMediaButton(KeyEvent paramKeyEvent) {
    throw new AssertionError();
  }
  
  public void setRepeatMode(int paramInt) {
    throw new AssertionError();
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    throw new AssertionError();
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2, String paramString) {
    throw new AssertionError();
  }
  
  public void skipToQueueItem(long paramLong) {
    throw new AssertionError();
  }
  
  public void stop() {
    throw new AssertionError();
  }
  
  public void unregisterCallbackListener(IMediaControllerCallback paramIMediaControllerCallback) {
    MediaSessionCompat$MediaSessionImplApi21.access$200(MediaSessionCompat$MediaSessionImplApi21.this).unregister(paramIMediaControllerCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImplApi21$ExtraSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */