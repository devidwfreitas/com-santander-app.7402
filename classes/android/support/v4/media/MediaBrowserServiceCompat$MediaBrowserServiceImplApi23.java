package android.support.v4.media;

import android.content.Context;
import android.os.Parcel;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompatApi23$ServiceCompatProxy {
  MediaBrowserServiceCompat$MediaBrowserServiceImplApi23() {
    super(paramMediaBrowserServiceCompat);
  }
  
  public void onCreate() {
    this.mServiceObj = MediaBrowserServiceCompatApi23.createService((Context)MediaBrowserServiceCompat.this, this);
    MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
  }
  
  public void onLoadItem(String paramString, MediaBrowserServiceCompatApi21$ResultWrapper<Parcel> paramMediaBrowserServiceCompatApi21$ResultWrapper) {
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1 mediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1 = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1(this, paramString, paramMediaBrowserServiceCompatApi21$ResultWrapper);
    MediaBrowserServiceCompat.this.onLoadItem(paramString, mediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */