package android.support.v4.media;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

class MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection implements ServiceConnection {
  private void postOrRun(Runnable paramRunnable) {
    if (Thread.currentThread() == MediaBrowserCompat$MediaBrowserImplBase.this.mHandler.getLooper().getThread()) {
      paramRunnable.run();
      return;
    } 
    MediaBrowserCompat$MediaBrowserImplBase.this.mHandler.post(paramRunnable);
  }
  
  boolean isCurrent(String paramString) {
    if (MediaBrowserCompat$MediaBrowserImplBase.this.mServiceConnection != this) {
      if (MediaBrowserCompat$MediaBrowserImplBase.this.mState != 0)
        Log.i("MediaBrowserCompat", paramString + " for " + MediaBrowserCompat$MediaBrowserImplBase.this.mServiceComponent + " with mServiceConnection=" + MediaBrowserCompat$MediaBrowserImplBase.this.mServiceConnection + " this=" + this); 
      return false;
    } 
    return true;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    postOrRun(new MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1(this, paramComponentName, paramIBinder));
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {
    postOrRun(new MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2(this, paramComponentName));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */