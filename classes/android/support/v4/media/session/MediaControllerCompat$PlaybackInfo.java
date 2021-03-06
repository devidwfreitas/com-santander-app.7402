package android.support.v4.media.session;

public final class MediaControllerCompat$PlaybackInfo {
  public static final int PLAYBACK_TYPE_LOCAL = 1;
  
  public static final int PLAYBACK_TYPE_REMOTE = 2;
  
  private final int mAudioStream;
  
  private final int mCurrentVolume;
  
  private final int mMaxVolume;
  
  private final int mPlaybackType;
  
  private final int mVolumeControl;
  
  MediaControllerCompat$PlaybackInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    this.mPlaybackType = paramInt1;
    this.mAudioStream = paramInt2;
    this.mVolumeControl = paramInt3;
    this.mMaxVolume = paramInt4;
    this.mCurrentVolume = paramInt5;
  }
  
  public int getAudioStream() {
    return this.mAudioStream;
  }
  
  public int getCurrentVolume() {
    return this.mCurrentVolume;
  }
  
  public int getMaxVolume() {
    return this.mMaxVolume;
  }
  
  public int getPlaybackType() {
    return this.mPlaybackType;
  }
  
  public int getVolumeControl() {
    return this.mVolumeControl;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$PlaybackInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */