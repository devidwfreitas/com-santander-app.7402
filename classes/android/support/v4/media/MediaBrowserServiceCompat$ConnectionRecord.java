package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.util.Pair;
import java.util.HashMap;
import java.util.List;

class MediaBrowserServiceCompat$ConnectionRecord {
  MediaBrowserServiceCompat$ServiceCallbacks callbacks;
  
  String pkg;
  
  MediaBrowserServiceCompat$BrowserRoot root;
  
  Bundle rootHints;
  
  HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap<String, List<Pair<IBinder, Bundle>>>();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ConnectionRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */