package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

class MediaControllerCompat$TransportControlsApi24 extends MediaControllerCompat$TransportControlsApi23 {
  public MediaControllerCompat$TransportControlsApi24(Object paramObject) {
    super(paramObject);
  }
  
  public void prepare() {
    MediaControllerCompatApi24$TransportControls.prepare(this.mControlsObj);
  }
  
  public void prepareFromMediaId(String paramString, Bundle paramBundle) {
    MediaControllerCompatApi24$TransportControls.prepareFromMediaId(this.mControlsObj, paramString, paramBundle);
  }
  
  public void prepareFromSearch(String paramString, Bundle paramBundle) {
    MediaControllerCompatApi24$TransportControls.prepareFromSearch(this.mControlsObj, paramString, paramBundle);
  }
  
  public void prepareFromUri(Uri paramUri, Bundle paramBundle) {
    MediaControllerCompatApi24$TransportControls.prepareFromUri(this.mControlsObj, paramUri, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$TransportControlsApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */