package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$1 implements Runnable {
  public void run() {
    IBinder iBinder = callbacks.asBinder();
    this.this$1.this$0.mConnections.remove(iBinder);
    MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = new MediaBrowserServiceCompat$ConnectionRecord(this.this$1.this$0);
    mediaBrowserServiceCompat$ConnectionRecord.pkg = pkg;
    mediaBrowserServiceCompat$ConnectionRecord.rootHints = rootHints;
    mediaBrowserServiceCompat$ConnectionRecord.callbacks = callbacks;
    mediaBrowserServiceCompat$ConnectionRecord.root = this.this$1.this$0.onGetRoot(pkg, uid, rootHints);
    if (mediaBrowserServiceCompat$ConnectionRecord.root == null) {
      Log.i("MBServiceCompat", "No root for client " + pkg + " from service " + getClass().getName());
      try {
        callbacks.onConnectFailed();
        return;
      } catch (RemoteException remoteException) {
        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + pkg);
        return;
      } 
    } 
    try {
      this.this$1.this$0.mConnections.put(remoteException, mediaBrowserServiceCompat$ConnectionRecord);
      if (this.this$1.this$0.mSession != null) {
        callbacks.onConnect(mediaBrowserServiceCompat$ConnectionRecord.root.getRootId(), this.this$1.this$0.mSession, mediaBrowserServiceCompat$ConnectionRecord.root.getExtras());
        return;
      } 
      return;
    } catch (RemoteException remoteException1) {
      Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + pkg);
      this.this$1.this$0.mConnections.remove(remoteException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */