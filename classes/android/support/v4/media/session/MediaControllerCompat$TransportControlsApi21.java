package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.RatingCompat;

class MediaControllerCompat$TransportControlsApi21 extends MediaControllerCompat$TransportControls {
  protected final Object mControlsObj;
  
  public MediaControllerCompat$TransportControlsApi21(Object paramObject) {
    this.mControlsObj = paramObject;
  }
  
  public void fastForward() {
    MediaControllerCompatApi21$TransportControls.fastForward(this.mControlsObj);
  }
  
  public void pause() {
    MediaControllerCompatApi21$TransportControls.pause(this.mControlsObj);
  }
  
  public void play() {
    MediaControllerCompatApi21$TransportControls.play(this.mControlsObj);
  }
  
  public void playFromMediaId(String paramString, Bundle paramBundle) {
    MediaControllerCompatApi21$TransportControls.playFromMediaId(this.mControlsObj, paramString, paramBundle);
  }
  
  public void playFromSearch(String paramString, Bundle paramBundle) {
    MediaControllerCompatApi21$TransportControls.playFromSearch(this.mControlsObj, paramString, paramBundle);
  }
  
  public void playFromUri(Uri paramUri, Bundle paramBundle) {
    if (paramUri == null || Uri.EMPTY.equals(paramUri))
      throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri."); 
    Bundle bundle = new Bundle();
    bundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", (Parcelable)paramUri);
    bundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_EXTRAS", (Parcelable)paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PLAY_FROM_URI", bundle);
  }
  
  public void prepare() {
    sendCustomAction("android.support.v4.media.session.action.PREPARE", (Bundle)null);
  }
  
  public void prepareFromMediaId(String paramString, Bundle paramBundle) {
    Bundle bundle = new Bundle();
    bundle.putString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID", paramString);
    bundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID", bundle);
  }
  
  public void prepareFromSearch(String paramString, Bundle paramBundle) {
    Bundle bundle = new Bundle();
    bundle.putString("android.support.v4.media.session.action.ARGUMENT_QUERY", paramString);
    bundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_SEARCH", bundle);
  }
  
  public void prepareFromUri(Uri paramUri, Bundle paramBundle) {
    Bundle bundle = new Bundle();
    bundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", (Parcelable)paramUri);
    bundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_URI", bundle);
  }
  
  public void rewind() {
    MediaControllerCompatApi21$TransportControls.rewind(this.mControlsObj);
  }
  
  public void seekTo(long paramLong) {
    MediaControllerCompatApi21$TransportControls.seekTo(this.mControlsObj, paramLong);
  }
  
  public void sendCustomAction(PlaybackStateCompat$CustomAction paramPlaybackStateCompat$CustomAction, Bundle paramBundle) {
    MediaControllerCompatApi21$TransportControls.sendCustomAction(this.mControlsObj, paramPlaybackStateCompat$CustomAction.getAction(), paramBundle);
  }
  
  public void sendCustomAction(String paramString, Bundle paramBundle) {
    MediaControllerCompatApi21$TransportControls.sendCustomAction(this.mControlsObj, paramString, paramBundle);
  }
  
  public void setRating(RatingCompat paramRatingCompat) {
    Object object = this.mControlsObj;
    if (paramRatingCompat != null) {
      Object object1 = paramRatingCompat.getRating();
    } else {
      paramRatingCompat = null;
    } 
    MediaControllerCompatApi21$TransportControls.setRating(object, paramRatingCompat);
  }
  
  public void setRepeatMode(int paramInt) {
    Bundle bundle = new Bundle();
    bundle.putInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE", paramInt);
    sendCustomAction("android.support.v4.media.session.action.SET_REPEAT_MODE", bundle);
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    Bundle bundle = new Bundle();
    bundle.putBoolean("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED", paramBoolean);
    sendCustomAction("android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED", bundle);
  }
  
  public void skipToNext() {
    MediaControllerCompatApi21$TransportControls.skipToNext(this.mControlsObj);
  }
  
  public void skipToPrevious() {
    MediaControllerCompatApi21$TransportControls.skipToPrevious(this.mControlsObj);
  }
  
  public void skipToQueueItem(long paramLong) {
    MediaControllerCompatApi21$TransportControls.skipToQueueItem(this.mControlsObj, paramLong);
  }
  
  public void stop() {
    MediaControllerCompatApi21$TransportControls.stop(this.mControlsObj);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$TransportControlsApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */