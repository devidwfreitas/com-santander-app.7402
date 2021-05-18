package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$3 implements Runnable {
  public void run() {
    IBinder iBinder = callbacks.asBinder();
    MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = (MediaBrowserServiceCompat$ConnectionRecord)this.this$1.this$0.mConnections.get(iBinder);
    if (mediaBrowserServiceCompat$ConnectionRecord == null) {
      Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + id);
      return;
    } 
    this.this$1.this$0.addSubscription(id, mediaBrowserServiceCompat$ConnectionRecord, token, options);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */