package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

class MediaSessionCompat$Callback$StubApi24 extends MediaSessionCompat$Callback$StubApi23 implements MediaSessionCompatApi24$Callback {
  MediaSessionCompat$Callback$StubApi24() {
    super(paramMediaSessionCompat$Callback);
  }
  
  public void onPrepare() {
    MediaSessionCompat$Callback.this.onPrepare();
  }
  
  public void onPrepareFromMediaId(String paramString, Bundle paramBundle) {
    MediaSessionCompat$Callback.this.onPrepareFromMediaId(paramString, paramBundle);
  }
  
  public void onPrepareFromSearch(String paramString, Bundle paramBundle) {
    MediaSessionCompat$Callback.this.onPrepareFromSearch(paramString, paramBundle);
  }
  
  public void onPrepareFromUri(Uri paramUri, Bundle paramBundle) {
    MediaSessionCompat$Callback.this.onPrepareFromUri(paramUri, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$Callback$StubApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */