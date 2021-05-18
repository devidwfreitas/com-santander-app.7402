package android.support.v4.media;

import android.media.browse.MediaBrowser;

class MediaBrowserCompatApi21$ConnectionCallbackProxy<T extends MediaBrowserCompatApi21$ConnectionCallback> extends MediaBrowser.ConnectionCallback {
  protected final T mConnectionCallback;
  
  public MediaBrowserCompatApi21$ConnectionCallbackProxy(T paramT) {
    this.mConnectionCallback = paramT;
  }
  
  public void onConnected() {
    this.mConnectionCallback.onConnected();
  }
  
  public void onConnectionFailed() {
    this.mConnectionCallback.onConnectionFailed();
  }
  
  public void onConnectionSuspended() {
    this.mConnectionCallback.onConnectionSuspended();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi21$ConnectionCallbackProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */