package android.support.v4.media;

class MediaBrowserCompat$ConnectionCallback$StubApi21 implements MediaBrowserCompatApi21$ConnectionCallback {
  public void onConnected() {
    if (MediaBrowserCompat$ConnectionCallback.this.mConnectionCallbackInternal != null)
      MediaBrowserCompat$ConnectionCallback.this.mConnectionCallbackInternal.onConnected(); 
    MediaBrowserCompat$ConnectionCallback.this.onConnected();
  }
  
  public void onConnectionFailed() {
    if (MediaBrowserCompat$ConnectionCallback.this.mConnectionCallbackInternal != null)
      MediaBrowserCompat$ConnectionCallback.this.mConnectionCallbackInternal.onConnectionFailed(); 
    MediaBrowserCompat$ConnectionCallback.this.onConnectionFailed();
  }
  
  public void onConnectionSuspended() {
    if (MediaBrowserCompat$ConnectionCallback.this.mConnectionCallbackInternal != null)
      MediaBrowserCompat$ConnectionCallback.this.mConnectionCallbackInternal.onConnectionSuspended(); 
    MediaBrowserCompat$ConnectionCallback.this.onConnectionSuspended();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$ConnectionCallback$StubApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */