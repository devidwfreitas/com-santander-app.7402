package android.support.v4.media;

import android.content.Context;
import android.os.Bundle;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi24 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 implements MediaBrowserServiceCompatApi24$ServiceCompatProxy {
  MediaBrowserServiceCompat$MediaBrowserServiceImplApi24() {
    super(paramMediaBrowserServiceCompat);
  }
  
  public Bundle getBrowserRootHints() {
    return (MediaBrowserServiceCompat.this.mCurConnection != null) ? ((MediaBrowserServiceCompat.this.mCurConnection.rootHints == null) ? null : new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints)) : MediaBrowserServiceCompatApi24.getBrowserRootHints(this.mServiceObj);
  }
  
  public void notifyChildrenChanged(String paramString, Bundle paramBundle) {
    if (paramBundle == null) {
      MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, paramString);
      return;
    } 
    MediaBrowserServiceCompatApi24.notifyChildrenChanged(this.mServiceObj, paramString, paramBundle);
  }
  
  public void onCreate() {
    this.mServiceObj = MediaBrowserServiceCompatApi24.createService((Context)MediaBrowserServiceCompat.this, this);
    MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
  }
  
  public void onLoadChildren(String paramString, MediaBrowserServiceCompatApi24$ResultWrapper paramMediaBrowserServiceCompatApi24$ResultWrapper, Bundle paramBundle) {
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1 mediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1 = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1(this, paramString, paramMediaBrowserServiceCompatApi24$ResultWrapper);
    MediaBrowserServiceCompat.this.onLoadChildren(paramString, mediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */