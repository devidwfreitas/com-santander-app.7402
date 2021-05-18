package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$8 implements Runnable {
  public void run() {
    IBinder iBinder = callbacks.asBinder();
    MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = (MediaBrowserServiceCompat$ConnectionRecord)this.this$1.this$0.mConnections.get(iBinder);
    if (mediaBrowserServiceCompat$ConnectionRecord == null) {
      Log.w("MBServiceCompat", "search for callback that isn't registered query=" + query);
      return;
    } 
    this.this$1.this$0.performSearch(query, extras, mediaBrowserServiceCompat$ConnectionRecord, receiver);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl$8.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */