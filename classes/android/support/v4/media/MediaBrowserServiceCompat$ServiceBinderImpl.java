package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;

class MediaBrowserServiceCompat$ServiceBinderImpl {
  public void addSubscription(String paramString, IBinder paramIBinder, Bundle paramBundle, MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks) {
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$3(this, paramMediaBrowserServiceCompat$ServiceCallbacks, paramString, paramIBinder, paramBundle));
  }
  
  public void connect(String paramString, int paramInt, Bundle paramBundle, MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks) {
    if (!MediaBrowserServiceCompat.this.isValidPackage(paramString, paramInt))
      throw new IllegalArgumentException("Package/uid mismatch: uid=" + paramInt + " package=" + paramString); 
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$1(this, paramMediaBrowserServiceCompat$ServiceCallbacks, paramString, paramBundle, paramInt));
  }
  
  public void disconnect(MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks) {
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$2(this, paramMediaBrowserServiceCompat$ServiceCallbacks));
  }
  
  public void getMediaItem(String paramString, ResultReceiver paramResultReceiver, MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks) {
    if (TextUtils.isEmpty(paramString) || paramResultReceiver == null)
      return; 
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$5(this, paramMediaBrowserServiceCompat$ServiceCallbacks, paramString, paramResultReceiver));
  }
  
  public void registerCallbacks(MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks, Bundle paramBundle) {
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$6(this, paramMediaBrowserServiceCompat$ServiceCallbacks, paramBundle));
  }
  
  public void removeSubscription(String paramString, IBinder paramIBinder, MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks) {
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$4(this, paramMediaBrowserServiceCompat$ServiceCallbacks, paramString, paramIBinder));
  }
  
  public void search(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver, MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks) {
    if (TextUtils.isEmpty(paramString) || paramResultReceiver == null)
      return; 
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$8(this, paramMediaBrowserServiceCompat$ServiceCallbacks, paramString, paramBundle, paramResultReceiver));
  }
  
  public void unregisterCallbacks(MediaBrowserServiceCompat$ServiceCallbacks paramMediaBrowserServiceCompat$ServiceCallbacks) {
    MediaBrowserServiceCompat.this.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$7(this, paramMediaBrowserServiceCompat$ServiceCallbacks));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceBinderImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */