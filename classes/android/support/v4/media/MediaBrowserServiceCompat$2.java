package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class MediaBrowserServiceCompat$2 extends MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> {
  MediaBrowserServiceCompat$2(Object paramObject) {
    super(paramObject);
  }
  
  void onResultSent(MediaBrowserCompat$MediaItem paramMediaBrowserCompat$MediaItem, int paramInt) {
    if ((paramInt & 0x2) != 0) {
      receiver.send(-1, null);
      return;
    } 
    Bundle bundle = new Bundle();
    bundle.putParcelable("media_item", paramMediaBrowserCompat$MediaItem);
    receiver.send(0, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */