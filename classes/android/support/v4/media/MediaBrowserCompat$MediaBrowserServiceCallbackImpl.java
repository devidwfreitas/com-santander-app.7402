package android.support.v4.media;

import android.os.Bundle;
import android.os.Messenger;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

interface MediaBrowserCompat$MediaBrowserServiceCallbackImpl {
  void onConnectionFailed(Messenger paramMessenger);
  
  void onLoadChildren(Messenger paramMessenger, String paramString, List paramList, Bundle paramBundle);
  
  void onServiceConnected(Messenger paramMessenger, String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserServiceCallbackImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */