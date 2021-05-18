package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

class MediaSessionCompatApi23$CallbackProxy<T extends MediaSessionCompatApi23$Callback> extends MediaSessionCompatApi21$CallbackProxy<T> {
  public MediaSessionCompatApi23$CallbackProxy(T paramT) {
    super(paramT);
  }
  
  public void onPlayFromUri(Uri paramUri, Bundle paramBundle) {
    ((MediaSessionCompatApi23$Callback)this.mCallback).onPlayFromUri(paramUri, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi23$CallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */