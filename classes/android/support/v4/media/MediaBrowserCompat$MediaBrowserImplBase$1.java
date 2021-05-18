package android.support.v4.media;

import android.content.ServiceConnection;

class MediaBrowserCompat$MediaBrowserImplBase$1 implements Runnable {
  public void run() {
    if (thisConnection == MediaBrowserCompat$MediaBrowserImplBase.this.mServiceConnection) {
      MediaBrowserCompat$MediaBrowserImplBase.this.forceCloseConnection();
      MediaBrowserCompat$MediaBrowserImplBase.this.mCallback.onConnectionFailed();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplBase$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */