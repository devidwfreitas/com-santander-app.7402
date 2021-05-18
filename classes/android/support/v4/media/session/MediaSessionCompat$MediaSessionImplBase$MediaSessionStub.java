package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.view.KeyEvent;
import java.util.List;

class MediaSessionCompat$MediaSessionImplBase$MediaSessionStub extends IMediaSession$Stub {
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(25, paramMediaDescriptionCompat);
  }
  
  public void addQueueItemAt(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(26, paramMediaDescriptionCompat, paramInt);
  }
  
  public void adjustVolume(int paramInt1, int paramInt2, String paramString) {
    MediaSessionCompat$MediaSessionImplBase.this.adjustVolume(paramInt1, paramInt2);
  }
  
  public void fastForward() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(16);
  }
  
  public Bundle getExtras() {
    synchronized (MediaSessionCompat$MediaSessionImplBase.this.mLock) {
      return MediaSessionCompat$MediaSessionImplBase.this.mExtras;
    } 
  }
  
  public long getFlags() {
    synchronized (MediaSessionCompat$MediaSessionImplBase.this.mLock) {
      return MediaSessionCompat$MediaSessionImplBase.this.mFlags;
    } 
  }
  
  public PendingIntent getLaunchPendingIntent() {
    synchronized (MediaSessionCompat$MediaSessionImplBase.this.mLock) {
      return MediaSessionCompat$MediaSessionImplBase.this.mSessionActivity;
    } 
  }
  
  public MediaMetadataCompat getMetadata() {
    return MediaSessionCompat$MediaSessionImplBase.this.mMetadata;
  }
  
  public String getPackageName() {
    return MediaSessionCompat$MediaSessionImplBase.this.mPackageName;
  }
  
  public PlaybackStateCompat getPlaybackState() {
    return MediaSessionCompat$MediaSessionImplBase.this.getStateWithUpdatedPosition();
  }
  
  public List<MediaSessionCompat$QueueItem> getQueue() {
    synchronized (MediaSessionCompat$MediaSessionImplBase.this.mLock) {
      return MediaSessionCompat$MediaSessionImplBase.this.mQueue;
    } 
  }
  
  public CharSequence getQueueTitle() {
    return MediaSessionCompat$MediaSessionImplBase.this.mQueueTitle;
  }
  
  public int getRatingType() {
    return MediaSessionCompat$MediaSessionImplBase.this.mRatingType;
  }
  
  public int getRepeatMode() {
    return MediaSessionCompat$MediaSessionImplBase.this.mRepeatMode;
  }
  
  public String getTag() {
    return MediaSessionCompat$MediaSessionImplBase.this.mTag;
  }
  
  public ParcelableVolumeInfo getVolumeAttributes() {
    int i = 2;
    synchronized (MediaSessionCompat$MediaSessionImplBase.this.mLock) {
      int m = MediaSessionCompat$MediaSessionImplBase.this.mVolumeType;
      int n = MediaSessionCompat$MediaSessionImplBase.this.mLocalStream;
      VolumeProviderCompat volumeProviderCompat = MediaSessionCompat$MediaSessionImplBase.this.mVolumeProvider;
      if (m == 2) {
        i = volumeProviderCompat.getVolumeControl();
        int i1 = volumeProviderCompat.getMaxVolume();
        int i2 = volumeProviderCompat.getCurrentVolume();
        return new ParcelableVolumeInfo(m, n, i, i1, i2);
      } 
      int j = MediaSessionCompat$MediaSessionImplBase.this.mAudioManager.getStreamMaxVolume(n);
      int k = MediaSessionCompat$MediaSessionImplBase.this.mAudioManager.getStreamVolume(n);
      return new ParcelableVolumeInfo(m, n, i, j, k);
    } 
  }
  
  public boolean isShuffleModeEnabled() {
    return MediaSessionCompat$MediaSessionImplBase.this.mShuffleModeEnabled;
  }
  
  public boolean isTransportControlEnabled() {
    return ((MediaSessionCompat$MediaSessionImplBase.this.mFlags & 0x2) != 0);
  }
  
  public void next() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(14);
  }
  
  public void pause() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(12);
  }
  
  public void play() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(7);
  }
  
  public void playFromMediaId(String paramString, Bundle paramBundle) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(8, paramString, paramBundle);
  }
  
  public void playFromSearch(String paramString, Bundle paramBundle) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(9, paramString, paramBundle);
  }
  
  public void playFromUri(Uri paramUri, Bundle paramBundle) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(10, paramUri, paramBundle);
  }
  
  public void prepare() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(3);
  }
  
  public void prepareFromMediaId(String paramString, Bundle paramBundle) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(4, paramString, paramBundle);
  }
  
  public void prepareFromSearch(String paramString, Bundle paramBundle) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(5, paramString, paramBundle);
  }
  
  public void prepareFromUri(Uri paramUri, Bundle paramBundle) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(6, paramUri, paramBundle);
  }
  
  public void previous() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(15);
  }
  
  public void rate(RatingCompat paramRatingCompat) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(19, paramRatingCompat);
  }
  
  public void registerCallbackListener(IMediaControllerCallback paramIMediaControllerCallback) {
    if (MediaSessionCompat$MediaSessionImplBase.this.mDestroyed)
      try {
        paramIMediaControllerCallback.onSessionDestroyed();
        return;
      } catch (Exception exception) {
        return;
      }  
    MediaSessionCompat$MediaSessionImplBase.this.mControllerCallbacks.register((IInterface)exception);
  }
  
  public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(27, paramMediaDescriptionCompat);
  }
  
  public void removeQueueItemAt(int paramInt) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(28, paramInt);
  }
  
  public void rewind() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(17);
  }
  
  public void seekTo(long paramLong) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(18, Long.valueOf(paramLong));
  }
  
  public void sendCommand(String paramString, Bundle paramBundle, MediaSessionCompat$ResultReceiverWrapper paramMediaSessionCompat$ResultReceiverWrapper) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(1, new MediaSessionCompat$MediaSessionImplBase$Command(paramString, paramBundle, MediaSessionCompat$ResultReceiverWrapper.access$000(paramMediaSessionCompat$ResultReceiverWrapper)));
  }
  
  public void sendCustomAction(String paramString, Bundle paramBundle) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(20, paramString, paramBundle);
  }
  
  public boolean sendMediaButton(KeyEvent paramKeyEvent) {
    boolean bool;
    if ((MediaSessionCompat$MediaSessionImplBase.this.mFlags & 0x1) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool)
      MediaSessionCompat$MediaSessionImplBase.this.postToHandler(21, paramKeyEvent); 
    return bool;
  }
  
  public void setRepeatMode(int paramInt) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(23, paramInt);
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(24, Boolean.valueOf(paramBoolean));
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2, String paramString) {
    MediaSessionCompat$MediaSessionImplBase.this.setVolumeTo(paramInt1, paramInt2);
  }
  
  public void skipToQueueItem(long paramLong) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(11, Long.valueOf(paramLong));
  }
  
  public void stop() {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(13);
  }
  
  public void unregisterCallbackListener(IMediaControllerCallback paramIMediaControllerCallback) {
    MediaSessionCompat$MediaSessionImplBase.this.mControllerCallbacks.unregister(paramIMediaControllerCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImplBase$MediaSessionStub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */