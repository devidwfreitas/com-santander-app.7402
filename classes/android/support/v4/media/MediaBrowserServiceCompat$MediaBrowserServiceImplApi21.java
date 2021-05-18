package android.support.v4.media;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompat$MediaBrowserServiceImpl, MediaBrowserServiceCompatApi21$ServiceCompatProxy {
  Messenger mMessenger;
  
  Object mServiceObj;
  
  public Bundle getBrowserRootHints() {
    if (this.mMessenger != null) {
      if (MediaBrowserServiceCompat.this.mCurConnection == null)
        throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods"); 
      if (MediaBrowserServiceCompat.this.mCurConnection.rootHints != null)
        return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints); 
    } 
    return null;
  }
  
  public void notifyChildrenChanged(String paramString, Bundle paramBundle) {
    if (this.mMessenger == null) {
      MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, paramString);
      return;
    } 
    MediaBrowserServiceCompat.this.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1(this, paramString, paramBundle));
  }
  
  public IBinder onBind(Intent paramIntent) {
    return MediaBrowserServiceCompatApi21.onBind(this.mServiceObj, paramIntent);
  }
  
  public void onCreate() {
    this.mServiceObj = MediaBrowserServiceCompatApi21.createService((Context)MediaBrowserServiceCompat.this, this);
    MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
  }
  
  public MediaBrowserServiceCompatApi21$BrowserRoot onGetRoot(String paramString, int paramInt, Bundle paramBundle) {
    String str;
    if (paramBundle != null && paramBundle.getInt("extra_client_version", 0) != 0) {
      paramBundle.remove("extra_client_version");
      this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
      str = (String)new Bundle();
      str.putInt("extra_service_version", 1);
      BundleCompat.putBinder((Bundle)str, "extra_messenger", this.mMessenger.getBinder());
    } else {
      str = null;
    } 
    MediaBrowserServiceCompat$BrowserRoot mediaBrowserServiceCompat$BrowserRoot = MediaBrowserServiceCompat.this.onGetRoot(paramString, paramInt, paramBundle);
    if (mediaBrowserServiceCompat$BrowserRoot == null)
      return null; 
    if (str == null) {
      Bundle bundle = mediaBrowserServiceCompat$BrowserRoot.getExtras();
      return new MediaBrowserServiceCompatApi21$BrowserRoot(mediaBrowserServiceCompat$BrowserRoot.getRootId(), bundle);
    } 
    paramString = str;
    if (mediaBrowserServiceCompat$BrowserRoot.getExtras() != null) {
      str.putAll(mediaBrowserServiceCompat$BrowserRoot.getExtras());
      paramString = str;
    } 
    return new MediaBrowserServiceCompatApi21$BrowserRoot(mediaBrowserServiceCompat$BrowserRoot.getRootId(), (Bundle)paramString);
  }
  
  public void onLoadChildren(String paramString, MediaBrowserServiceCompatApi21$ResultWrapper<List<Parcel>> paramMediaBrowserServiceCompatApi21$ResultWrapper) {
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2 mediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2 = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2(this, paramString, paramMediaBrowserServiceCompatApi21$ResultWrapper);
    MediaBrowserServiceCompat.this.onLoadChildren(paramString, mediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2);
  }
  
  public void setSessionToken(MediaSessionCompat.Token paramToken) {
    MediaBrowserServiceCompatApi21.setSessionToken(this.mServiceObj, paramToken.getToken());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */