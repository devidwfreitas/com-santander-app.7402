package android.support.v4.media;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;
import java.util.ArrayList;

class MediaBrowserCompat$SearchResultReceiver extends ResultReceiver {
  private final MediaBrowserCompat$SearchCallback mCallback;
  
  private final Bundle mExtras;
  
  private final String mQuery;
  
  MediaBrowserCompat$SearchResultReceiver(String paramString, Bundle paramBundle, MediaBrowserCompat$SearchCallback paramMediaBrowserCompat$SearchCallback, Handler paramHandler) {
    super(paramHandler);
    this.mQuery = paramString;
    this.mExtras = paramBundle;
    this.mCallback = paramMediaBrowserCompat$SearchCallback;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {
    ArrayList<MediaBrowserCompat$MediaItem> arrayList;
    if (paramInt != 0 || paramBundle == null || !paramBundle.containsKey("search_results")) {
      this.mCallback.onError(this.mQuery, this.mExtras);
      return;
    } 
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("search_results");
    paramBundle = null;
    if (arrayOfParcelable != null) {
      arrayList = new ArrayList();
      int i = arrayOfParcelable.length;
      for (paramInt = 0; paramInt < i; paramInt++)
        arrayList.add((MediaBrowserCompat$MediaItem)arrayOfParcelable[paramInt]); 
    } 
    this.mCallback.onSearchResult(this.mQuery, this.mExtras, arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$SearchResultReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */