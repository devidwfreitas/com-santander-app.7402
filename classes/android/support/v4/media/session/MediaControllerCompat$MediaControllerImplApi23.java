package android.support.v4.media.session;

import android.content.Context;

class MediaControllerCompat$MediaControllerImplApi23 extends MediaControllerCompat$MediaControllerImplApi21 {
  public MediaControllerCompat$MediaControllerImplApi23(Context paramContext, MediaSessionCompat$Token paramMediaSessionCompat$Token) {
    super(paramContext, paramMediaSessionCompat$Token);
  }
  
  public MediaControllerCompat$MediaControllerImplApi23(Context paramContext, MediaSessionCompat paramMediaSessionCompat) {
    super(paramContext, paramMediaSessionCompat);
  }
  
  public MediaControllerCompat$TransportControls getTransportControls() {
    Object object = MediaControllerCompatApi21.getTransportControls(this.mControllerObj);
    return (object != null) ? new MediaControllerCompat$TransportControlsApi23(object) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$MediaControllerImplApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */