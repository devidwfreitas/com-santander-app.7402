package android.support.v4.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.session.MediaSessionCompat;

interface MediaBrowserServiceCompat$MediaBrowserServiceImpl {
  Bundle getBrowserRootHints();
  
  void notifyChildrenChanged(String paramString, Bundle paramBundle);
  
  IBinder onBind(Intent paramIntent);
  
  void onCreate();
  
  void setSessionToken(MediaSessionCompat.Token paramToken);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */