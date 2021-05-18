package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;
import java.util.List;

class MediaBrowserServiceCompat$3 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
  MediaBrowserServiceCompat$3(Object paramObject) {
    super(paramObject);
  }
  
  void onResultSent(List<MediaBrowserCompat$MediaItem> paramList, int paramInt) {
    if ((paramInt & 0x4) != 0 || paramList == null) {
      receiver.send(-1, null);
      return;
    } 
    Bundle bundle = new Bundle();
    bundle.putParcelableArray("search_results", paramList.<Parcelable>toArray((Parcelable[])new MediaBrowserCompat$MediaItem[0]));
    receiver.send(0, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */