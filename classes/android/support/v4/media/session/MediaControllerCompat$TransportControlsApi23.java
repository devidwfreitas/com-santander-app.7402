package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

class MediaControllerCompat$TransportControlsApi23 extends MediaControllerCompat$TransportControlsApi21 {
  public MediaControllerCompat$TransportControlsApi23(Object paramObject) {
    super(paramObject);
  }
  
  public void playFromUri(Uri paramUri, Bundle paramBundle) {
    MediaControllerCompatApi23$TransportControls.playFromUri(this.mControlsObj, paramUri, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$TransportControlsApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */