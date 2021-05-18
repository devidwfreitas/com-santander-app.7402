package android.support.v4.media;

import android.os.IBinder;

class MediaBrowserServiceCompat$ServiceBinderImpl$7 implements Runnable {
  public void run() {
    IBinder iBinder = callbacks.asBinder();
    this.this$1.this$0.mConnections.remove(iBinder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */