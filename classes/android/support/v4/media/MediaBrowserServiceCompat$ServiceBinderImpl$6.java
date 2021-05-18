package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;

class MediaBrowserServiceCompat$ServiceBinderImpl$6 implements Runnable {
  public void run() {
    IBinder iBinder = callbacks.asBinder();
    this.this$1.this$0.mConnections.remove(iBinder);
    MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = new MediaBrowserServiceCompat$ConnectionRecord(this.this$1.this$0);
    mediaBrowserServiceCompat$ConnectionRecord.callbacks = callbacks;
    mediaBrowserServiceCompat$ConnectionRecord.rootHints = rootHints;
    this.this$1.this$0.mConnections.put(iBinder, mediaBrowserServiceCompat$ConnectionRecord);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */