package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserServiceCompat$ServiceCallbacksCompat implements MediaBrowserServiceCompat$ServiceCallbacks {
  final Messenger mCallbacks;
  
  MediaBrowserServiceCompat$ServiceCallbacksCompat(Messenger paramMessenger) {
    this.mCallbacks = paramMessenger;
  }
  
  private void sendRequest(int paramInt, Bundle paramBundle) {
    Message message = Message.obtain();
    message.what = paramInt;
    message.arg1 = 1;
    message.setData(paramBundle);
    this.mCallbacks.send(message);
  }
  
  public IBinder asBinder() {
    return this.mCallbacks.getBinder();
  }
  
  public void onConnect(String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle) {
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    bundle.putInt("extra_service_version", 1);
    paramBundle = new Bundle();
    paramBundle.putString("data_media_item_id", paramString);
    paramBundle.putParcelable("data_media_session_token", (Parcelable)paramToken);
    paramBundle.putBundle("data_root_hints", bundle);
    sendRequest(1, paramBundle);
  }
  
  public void onConnectFailed() {
    sendRequest(2, null);
  }
  
  public void onLoadChildren(String paramString, List<MediaBrowserCompat$MediaItem> paramList, Bundle paramBundle) {
    Bundle bundle = new Bundle();
    bundle.putString("data_media_item_id", paramString);
    bundle.putBundle("data_options", paramBundle);
    if (paramList != null) {
      ArrayList<MediaBrowserCompat$MediaItem> arrayList;
      if (paramList instanceof ArrayList) {
        arrayList = (ArrayList)paramList;
      } else {
        arrayList = new ArrayList<MediaBrowserCompat$MediaItem>(paramList);
      } 
      bundle.putParcelableArrayList("data_media_item_list", arrayList);
    } 
    sendRequest(3, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceCallbacksCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */