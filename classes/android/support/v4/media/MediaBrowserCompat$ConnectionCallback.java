package android.support.v4.media;

import android.os.Build;

public class MediaBrowserCompat$ConnectionCallback {
  MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal mConnectionCallbackInternal;
  
  final Object mConnectionCallbackObj;
  
  public MediaBrowserCompat$ConnectionCallback() {
    if (Build.VERSION.SDK_INT >= 21) {
      this.mConnectionCallbackObj = MediaBrowserCompatApi21.createConnectionCallback(new MediaBrowserCompat$ConnectionCallback$StubApi21(this));
      return;
    } 
    this.mConnectionCallbackObj = null;
  }
  
  public void onConnected() {}
  
  public void onConnectionFailed() {}
  
  public void onConnectionSuspended() {}
  
  void setInternalConnectionCallback(MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal paramMediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal) {
    this.mConnectionCallbackInternal = paramMediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$ConnectionCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */