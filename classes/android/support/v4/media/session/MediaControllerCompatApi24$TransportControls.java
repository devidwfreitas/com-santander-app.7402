package android.support.v4.media.session;

import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;

public class MediaControllerCompatApi24$TransportControls extends MediaControllerCompatApi23$TransportControls {
  public static void prepare(Object paramObject) {
    ((MediaController.TransportControls)paramObject).prepare();
  }
  
  public static void prepareFromMediaId(Object paramObject, String paramString, Bundle paramBundle) {
    ((MediaController.TransportControls)paramObject).prepareFromMediaId(paramString, paramBundle);
  }
  
  public static void prepareFromSearch(Object paramObject, String paramString, Bundle paramBundle) {
    ((MediaController.TransportControls)paramObject).prepareFromSearch(paramString, paramBundle);
  }
  
  public static void prepareFromUri(Object paramObject, Uri paramUri, Bundle paramBundle) {
    ((MediaController.TransportControls)paramObject).prepareFromUri(paramUri, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompatApi24$TransportControls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */