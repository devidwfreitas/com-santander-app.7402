package android.support.v4.media.session;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

public final class PlaybackStateCompat$Builder {
  private long mActions;
  
  private long mActiveItemId = -1L;
  
  private long mBufferedPosition;
  
  private final List<PlaybackStateCompat$CustomAction> mCustomActions = new ArrayList<PlaybackStateCompat$CustomAction>();
  
  private int mErrorCode;
  
  private CharSequence mErrorMessage;
  
  private Bundle mExtras;
  
  private long mPosition;
  
  private float mRate;
  
  private int mState;
  
  private long mUpdateTime;
  
  public PlaybackStateCompat$Builder() {}
  
  public PlaybackStateCompat$Builder(PlaybackStateCompat paramPlaybackStateCompat) {
    this.mState = paramPlaybackStateCompat.mState;
    this.mPosition = paramPlaybackStateCompat.mPosition;
    this.mRate = paramPlaybackStateCompat.mSpeed;
    this.mUpdateTime = paramPlaybackStateCompat.mUpdateTime;
    this.mBufferedPosition = paramPlaybackStateCompat.mBufferedPosition;
    this.mActions = paramPlaybackStateCompat.mActions;
    this.mErrorCode = paramPlaybackStateCompat.mErrorCode;
    this.mErrorMessage = paramPlaybackStateCompat.mErrorMessage;
    if (paramPlaybackStateCompat.mCustomActions != null)
      this.mCustomActions.addAll(paramPlaybackStateCompat.mCustomActions); 
    this.mActiveItemId = paramPlaybackStateCompat.mActiveItemId;
    this.mExtras = paramPlaybackStateCompat.mExtras;
  }
  
  public PlaybackStateCompat$Builder addCustomAction(PlaybackStateCompat$CustomAction paramPlaybackStateCompat$CustomAction) {
    if (paramPlaybackStateCompat$CustomAction == null)
      throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat."); 
    this.mCustomActions.add(paramPlaybackStateCompat$CustomAction);
    return this;
  }
  
  public PlaybackStateCompat$Builder addCustomAction(String paramString1, String paramString2, int paramInt) {
    return addCustomAction(new PlaybackStateCompat$CustomAction(paramString1, paramString2, paramInt, null));
  }
  
  public PlaybackStateCompat build() {
    return new PlaybackStateCompat(this.mState, this.mPosition, this.mBufferedPosition, this.mRate, this.mActions, this.mErrorCode, this.mErrorMessage, this.mUpdateTime, this.mCustomActions, this.mActiveItemId, this.mExtras);
  }
  
  public PlaybackStateCompat$Builder setActions(long paramLong) {
    this.mActions = paramLong;
    return this;
  }
  
  public PlaybackStateCompat$Builder setActiveQueueItemId(long paramLong) {
    this.mActiveItemId = paramLong;
    return this;
  }
  
  public PlaybackStateCompat$Builder setBufferedPosition(long paramLong) {
    this.mBufferedPosition = paramLong;
    return this;
  }
  
  public PlaybackStateCompat$Builder setErrorMessage(int paramInt, CharSequence paramCharSequence) {
    this.mErrorCode = paramInt;
    this.mErrorMessage = paramCharSequence;
    return this;
  }
  
  public PlaybackStateCompat$Builder setErrorMessage(CharSequence paramCharSequence) {
    this.mErrorMessage = paramCharSequence;
    return this;
  }
  
  public PlaybackStateCompat$Builder setExtras(Bundle paramBundle) {
    this.mExtras = paramBundle;
    return this;
  }
  
  public PlaybackStateCompat$Builder setState(int paramInt, long paramLong, float paramFloat) {
    return setState(paramInt, paramLong, paramFloat, SystemClock.elapsedRealtime());
  }
  
  public PlaybackStateCompat$Builder setState(int paramInt, long paramLong1, float paramFloat, long paramLong2) {
    this.mState = paramInt;
    this.mPosition = paramLong1;
    this.mUpdateTime = paramLong2;
    this.mRate = paramFloat;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\PlaybackStateCompat$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */