package android.support.v4.media.session;

import android.media.RemoteControlClient;

class MediaSessionCompatApi18$OnPlaybackPositionUpdateListener<T extends MediaSessionCompatApi18$Callback> implements RemoteControlClient.OnPlaybackPositionUpdateListener {
  protected final T mCallback;
  
  public MediaSessionCompatApi18$OnPlaybackPositionUpdateListener(T paramT) {
    this.mCallback = paramT;
  }
  
  public void onPlaybackPositionUpdate(long paramLong) {
    this.mCallback.onSeekTo(paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi18$OnPlaybackPositionUpdateListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */