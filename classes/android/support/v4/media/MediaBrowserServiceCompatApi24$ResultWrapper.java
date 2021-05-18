package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserServiceCompatApi24$ResultWrapper {
  MediaBrowserService.Result mResultObj;
  
  MediaBrowserServiceCompatApi24$ResultWrapper(MediaBrowserService.Result paramResult) {
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
  
  public void sendResult(List<Parcel> paramList, int paramInt) {
    try {
      MediaBrowserServiceCompatApi24.access$000().setInt(this.mResultObj, paramInt);
    } catch (IllegalAccessException illegalAccessException) {
      Log.w("MBSCompatApi24", illegalAccessException);
    } 
    this.mResultObj.sendResult(parcelListToItemList(paramList));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi24$ResultWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */