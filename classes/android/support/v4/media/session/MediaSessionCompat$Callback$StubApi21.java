package android.support.v4.media.session;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.RatingCompat;

class MediaSessionCompat$Callback$StubApi21 implements MediaSessionCompatApi21$Callback {
  public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {
    MediaSessionCompat$MediaSessionImplApi21 mediaSessionCompat$MediaSessionImplApi21;
    if (paramString.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
      mediaSessionCompat$MediaSessionImplApi21 = (MediaSessionCompat$MediaSessionImplApi21)MediaSessionCompat$Callback.this.mSessionImpl.get();
      if (mediaSessionCompat$MediaSessionImplApi21 != null) {
        paramBundle = new Bundle();
        BundleCompat.putBinder(paramBundle, "android.support.v4.media.session.EXTRA_BINDER", (IBinder)mediaSessionCompat$MediaSessionImplApi21.getExtraSessionBinder());
        paramResultReceiver.send(0, paramBundle);
      } 
      return;
    } 
    if (mediaSessionCompat$MediaSessionImplApi21.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
      paramBundle.setClassLoader(MediaDescriptionCompat.class.getClassLoader());
      MediaSessionCompat$Callback.this.onAddQueueItem((MediaDescriptionCompat)paramBundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
      return;
    } 
    if (mediaSessionCompat$MediaSessionImplApi21.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
      paramBundle.setClassLoader(MediaDescriptionCompat.class.getClassLoader());
      MediaSessionCompat$Callback.this.onAddQueueItem((MediaDescriptionCompat)paramBundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), paramBundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
      return;
    } 
    if (mediaSessionCompat$MediaSessionImplApi21.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
      paramBundle.setClassLoader(MediaDescriptionCompat.class.getClassLoader());
      MediaSessionCompat$Callback.this.onRemoveQueueItem((MediaDescriptionCompat)paramBundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
      return;
    } 
    if (mediaSessionCompat$MediaSessionImplApi21.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
      MediaSessionCompat$Callback.this.onRemoveQueueItemAt(paramBundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
      return;
    } 
    MediaSessionCompat$Callback.this.onCommand((String)mediaSessionCompat$MediaSessionImplApi21, paramBundle, paramResultReceiver);
  }
  
  public void onCustomAction(String paramString, Bundle paramBundle) {
    Uri uri2;
    String str;
    Uri uri1;
    if (paramString.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
      uri2 = (Uri)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
      paramBundle = (Bundle)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      MediaSessionCompat$Callback.this.onPlayFromUri(uri2, paramBundle);
      return;
    } 
    if (uri2.equals("android.support.v4.media.session.action.PREPARE")) {
      MediaSessionCompat$Callback.this.onPrepare();
      return;
    } 
    if (uri2.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
      str = paramBundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
      paramBundle = paramBundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      MediaSessionCompat$Callback.this.onPrepareFromMediaId(str, paramBundle);
      return;
    } 
    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
      str = paramBundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
      paramBundle = paramBundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      MediaSessionCompat$Callback.this.onPrepareFromSearch(str, paramBundle);
      return;
    } 
    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
      uri1 = (Uri)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
      paramBundle = paramBundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      MediaSessionCompat$Callback.this.onPrepareFromUri(uri1, paramBundle);
      return;
    } 
    if (uri1.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
      int i = paramBundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE");
      MediaSessionCompat$Callback.this.onSetRepeatMode(i);
      return;
    } 
    if (uri1.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED")) {
      boolean bool = paramBundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED");
      MediaSessionCompat$Callback.this.onSetShuffleModeEnabled(bool);
      return;
    } 
    MediaSessionCompat$Callback.this.onCustomAction((String)uri1, paramBundle);
  }
  
  public void onFastForward() {
    MediaSessionCompat$Callback.this.onFastForward();
  }
  
  public boolean onMediaButtonEvent(Intent paramIntent) {
    return MediaSessionCompat$Callback.this.onMediaButtonEvent(paramIntent);
  }
  
  public void onPause() {
    MediaSessionCompat$Callback.this.onPause();
  }
  
  public void onPlay() {
    MediaSessionCompat$Callback.this.onPlay();
  }
  
  public void onPlayFromMediaId(String paramString, Bundle paramBundle) {
    MediaSessionCompat$Callback.this.onPlayFromMediaId(paramString, paramBundle);
  }
  
  public void onPlayFromSearch(String paramString, Bundle paramBundle) {
    MediaSessionCompat$Callback.this.onPlayFromSearch(paramString, paramBundle);
  }
  
  public void onRewind() {
    MediaSessionCompat$Callback.this.onRewind();
  }
  
  public void onSeekTo(long paramLong) {
    MediaSessionCompat$Callback.this.onSeekTo(paramLong);
  }
  
  public void onSetRating(Object paramObject) {
    MediaSessionCompat$Callback.this.onSetRating(RatingCompat.fromRating(paramObject));
  }
  
  public void onSkipToNext() {
    MediaSessionCompat$Callback.this.onSkipToNext();
  }
  
  public void onSkipToPrevious() {
    MediaSessionCompat$Callback.this.onSkipToPrevious();
  }
  
  public void onSkipToQueueItem(long paramLong) {
    MediaSessionCompat$Callback.this.onSkipToQueueItem(paramLong);
  }
  
  public void onStop() {
    MediaSessionCompat$Callback.this.onStop();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$Callback$StubApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */