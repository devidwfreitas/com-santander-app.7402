package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

public interface MediaSessionCompatApi24$Callback extends MediaSessionCompatApi23$Callback {
  void onPrepare();
  
  void onPrepareFromMediaId(String paramString, Bundle paramBundle);
  
  void onPrepareFromSearch(String paramString, Bundle paramBundle);
  
  void onPrepareFromUri(Uri paramUri, Bundle paramBundle);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi24$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */