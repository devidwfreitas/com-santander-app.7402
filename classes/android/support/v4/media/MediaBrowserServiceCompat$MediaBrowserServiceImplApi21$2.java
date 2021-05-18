package android.support.v4.media;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
  MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2(Object paramObject) {
    super(paramObject);
  }
  
  public void detach() {
    resultWrapper.detach();
  }
  
  void onResultSent(List<MediaBrowserCompat$MediaItem> paramList, int paramInt) {
    ArrayList<Parcel> arrayList = null;
    if (paramList != null) {
      arrayList = new ArrayList();
      for (MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem : paramList) {
        Parcel parcel = Parcel.obtain();
        mediaBrowserCompat$MediaItem.writeToParcel(parcel, 0);
        arrayList.add(parcel);
      } 
    } 
    resultWrapper.sendResult(arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */