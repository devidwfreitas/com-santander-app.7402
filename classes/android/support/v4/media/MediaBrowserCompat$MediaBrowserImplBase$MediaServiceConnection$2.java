package android.support.v4.media;

import android.content.ComponentName;
import android.util.Log;

class MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2 implements Runnable {
  public void run() {
    if (MediaBrowserCompat.DEBUG) {
      Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceDisconnected name=" + name + " this=" + this + " mServiceConnection=" + this.this$1.this$0.mServiceConnection);
      this.this$1.this$0.dump();
    } 
    if (!MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.isCurrent("onServiceDisconnected"))
      return; 
    this.this$1.this$0.mServiceBinderWrapper = null;
    this.this$1.this$0.mCallbacksMessenger = null;
    this.this$1.this$0.mHandler.setCallbacksMessenger(null);
    this.this$1.this$0.mState = 3;
    this.this$1.this$0.mCallback.onConnectionSuspended();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */