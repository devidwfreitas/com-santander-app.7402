package android.support.v4.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.support.annotation.NonNull;
import android.support.v4.media.session.MediaSessionCompat;

class MediaBrowserServiceCompat$MediaBrowserServiceImplBase implements MediaBrowserServiceCompat$MediaBrowserServiceImpl {
  private Messenger mMessenger;
  
  public Bundle getBrowserRootHints() {
    if (MediaBrowserServiceCompat.this.mCurConnection == null)
      throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods"); 
    return (MediaBrowserServiceCompat.this.mCurConnection.rootHints == null) ? null : new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
  }
  
  public void notifyChildrenChanged(@NonNull String paramString, Bundle paramBundle) {
    MediaBrowserServiceCompat.this.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2(this, paramString, paramBundle));
  }
  
  public IBinder onBind(Intent paramIntent) {
    return "android.media.browse.MediaBrowserService".equals(paramIntent.getAction()) ? this.mMessenger.getBinder() : null;
  }
  
  public void onCreate() {
    this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
  }
  
  public void setSessionToken(MediaSessionCompat.Token paramToken) {
    MediaBrowserServiceCompat.this.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1(this, paramToken));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */