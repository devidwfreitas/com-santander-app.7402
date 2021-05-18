package android.support.v4.media;

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

class MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1 implements Runnable {
  public void run() {
    if (MediaBrowserCompat.DEBUG) {
      Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceConnected name=" + name + " binder=" + binder);
      this.this$1.this$0.dump();
    } 
    if (MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.isCurrent("onServiceConnected")) {
      this.this$1.this$0.mServiceBinderWrapper = new MediaBrowserCompat$ServiceBinderWrapper(binder, this.this$1.this$0.mRootHints);
      this.this$1.this$0.mCallbacksMessenger = new Messenger(this.this$1.this$0.mHandler);
      this.this$1.this$0.mHandler.setCallbacksMessenger(this.this$1.this$0.mCallbacksMessenger);
      this.this$1.this$0.mState = 1;
      try {
        if (MediaBrowserCompat.DEBUG) {
          Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
          this.this$1.this$0.dump();
        } 
        this.this$1.this$0.mServiceBinderWrapper.connect(this.this$1.this$0.mContext, this.this$1.this$0.mCallbacksMessenger);
        return;
      } catch (RemoteException remoteException) {
        Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.this$1.this$0.mServiceComponent);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */