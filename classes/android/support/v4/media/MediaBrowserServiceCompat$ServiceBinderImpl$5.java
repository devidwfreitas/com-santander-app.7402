package android.support.v4.media;

import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$5 implements Runnable {
  public void run() {
    IBinder iBinder = callbacks.asBinder();
    MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = (MediaBrowserServiceCompat$ConnectionRecord)this.this$1.this$0.mConnections.get(iBinder);
    if (mediaBrowserServiceCompat$ConnectionRecord == null) {
      Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + mediaId);
      return;
    } 
    this.this$1.this$0.performLoadItem(mediaId, mediaBrowserServiceCompat$ConnectionRecord, receiver);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */