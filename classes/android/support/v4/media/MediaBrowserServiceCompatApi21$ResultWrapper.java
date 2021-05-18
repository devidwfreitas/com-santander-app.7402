package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserServiceCompatApi21$ResultWrapper<T> {
  MediaBrowserService.Result mResultObj;
  
  MediaBrowserServiceCompatApi21$ResultWrapper(MediaBrowserService.Result paramResult) {
    this.mResultObj = paramResult;
  }
  
  public void detach() {
    this.mResultObj.detach();
  }
  
  List<MediaBrowser.MediaItem> parcelListToItemList(List<Parcel> paramList) {
    if (paramList == null)
      return null; 
    ArrayList<Object> arrayList = new ArrayList();
    for (Parcel parcel : paramList) {
      parcel.setDataPosition(0);
      arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
      parcel.recycle();
    } 
    return arrayList;
  }
  
  public void sendResult(T paramT) {
    if (paramT instanceof List) {
      this.mResultObj.sendResult(parcelListToItemList((List<Parcel>)paramT));
      return;
    } 
    if (paramT instanceof Parcel) {
      Parcel parcel = (Parcel)paramT;
      parcel.setDataPosition(0);
      this.mResultObj.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
      parcel.recycle();
      return;
    } 
    this.mResultObj.sendResult(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi21$ResultWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */