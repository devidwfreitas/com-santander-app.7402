package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.util.Pair;
import java.util.List;

class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2 implements Runnable {
  public void run() {
    for (IBinder iBinder : this.this$1.this$0.mConnections.keySet()) {
      MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = (MediaBrowserServiceCompat$ConnectionRecord)this.this$1.this$0.mConnections.get(iBinder);
      List list = mediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(parentId);
      if (list != null)
        for (Pair pair : list) {
          if (MediaBrowserCompatUtils.hasDuplicatedItems(options, (Bundle)pair.second))
            this.this$1.this$0.performLoadChildren(parentId, mediaBrowserServiceCompat$ConnectionRecord, (Bundle)pair.second); 
        }  
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */