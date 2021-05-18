package android.support.v4.media;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.List;

class MediaBrowserServiceCompat$1 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
  MediaBrowserServiceCompat$1(Object paramObject) {
    super(paramObject);
  }
  
  void onResultSent(List<MediaBrowserCompat$MediaItem> paramList, int paramInt) {
    if (MediaBrowserServiceCompat.this.mConnections.get(connection.callbacks.asBinder()) != connection) {
      if (MediaBrowserServiceCompat.DEBUG)
        Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + connection.pkg + " id=" + parentId); 
      return;
    } 
    List<MediaBrowserCompat$MediaItem> list = paramList;
    if ((paramInt & 0x1) != 0)
      list = MediaBrowserServiceCompat.this.applyOptions(paramList, options); 
    try {
      connection.callbacks.onLoadChildren(parentId, list, options);
      return;
    } catch (RemoteException remoteException) {
      Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + parentId + " package=" + connection.pkg);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */