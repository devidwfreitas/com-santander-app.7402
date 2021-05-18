package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

class MediaSessionCompatApi24$CallbackProxy<T extends MediaSessionCompatApi24$Callback> extends MediaSessionCompatApi23$CallbackProxy<T> {
  public MediaSessionCompatApi24$CallbackProxy(T paramT) {
    super(paramT);
  }
  
  public void onPrepare() {
    ((MediaSessionCompatApi24$Callback)this.mCallback).onPrepare();
  }
  
  public void onPrepareFromMediaId(String paramString, Bundle paramBundle) {
    ((MediaSessionCompatApi24$Callback)this.mCallback).onPrepareFromMediaId(paramString, paramBundle);
  }
  
  public void onPrepareFromSearch(String paramString, Bundle paramBundle) {
    ((MediaSessionCompatApi24$Callback)this.mCallback).onPrepareFromSearch(paramString, paramBundle);
  }
  
  public void onPrepareFromUri(Uri paramUri, Bundle paramBundle) {
    ((MediaSessionCompatApi24$Callback)this.mCallback).onPrepareFromUri(paramUri, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi24$CallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */