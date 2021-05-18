package android.support.v4.media;

import android.os.IBinder;

class MediaBrowserServiceCompat$ServiceBinderImpl$2 implements Runnable {
  public void run() {
    IBinder iBinder = callbacks.asBinder();
    if ((MediaBrowserServiceCompat$ConnectionRecord)this.this$1.this$0.mConnections.remove(iBinder) != null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */