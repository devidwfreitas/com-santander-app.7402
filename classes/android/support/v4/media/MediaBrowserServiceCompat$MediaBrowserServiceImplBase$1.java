package android.support.v4.media;

import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.util.Iterator;

class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1 implements Runnable {
  public void run() {
    Iterator<MediaBrowserServiceCompat$ConnectionRecord> iterator = this.this$1.this$0.mConnections.values().iterator();
    while (iterator.hasNext()) {
      MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = iterator.next();
      try {
        mediaBrowserServiceCompat$ConnectionRecord.callbacks.onConnect(mediaBrowserServiceCompat$ConnectionRecord.root.getRootId(), token, mediaBrowserServiceCompat$ConnectionRecord.root.getExtras());
      } catch (RemoteException remoteException) {
        Log.w("MBServiceCompat", "Connection for " + mediaBrowserServiceCompat$ConnectionRecord.pkg + " is no longer valid.");
        iterator.remove();
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */