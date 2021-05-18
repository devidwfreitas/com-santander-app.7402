package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class MediaSessionCompatApi23 {
  public static Object createCallback(MediaSessionCompatApi23$Callback paramMediaSessionCompatApi23$Callback) {
    return new MediaSessionCompatApi23$CallbackProxy<MediaSessionCompatApi23$Callback>(paramMediaSessionCompatApi23$Callback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */