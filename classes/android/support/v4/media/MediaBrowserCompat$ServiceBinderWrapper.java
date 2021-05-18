package android.support.v4.media;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.support.v4.app.BundleCompat;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$ServiceBinderWrapper {
  private Messenger mMessenger;
  
  private Bundle mRootHints;
  
  public MediaBrowserCompat$ServiceBinderWrapper(IBinder paramIBinder, Bundle paramBundle) {
    this.mMessenger = new Messenger(paramIBinder);
    this.mRootHints = paramBundle;
  }
  
  private void sendRequest(int paramInt, Bundle paramBundle, Messenger paramMessenger) {
    Message message = Message.obtain();
    message.what = paramInt;
    message.arg1 = 1;
    message.setData(paramBundle);
    message.replyTo = paramMessenger;
    this.mMessenger.send(message);
  }
  
  void addSubscription(String paramString, IBinder paramIBinder, Bundle paramBundle, Messenger paramMessenger) {
    Bundle bundle = new Bundle();
    bundle.putString("data_media_item_id", paramString);
    BundleCompat.putBinder(bundle, "data_callback_token", paramIBinder);
    bundle.putBundle("data_options", paramBundle);
    sendRequest(3, bundle, paramMessenger);
  }
  
  void connect(Context paramContext, Messenger paramMessenger) {
    Bundle bundle = new Bundle();
    bundle.putString("data_package_name", paramContext.getPackageName());
    bundle.putBundle("data_root_hints", this.mRootHints);
    sendRequest(1, bundle, paramMessenger);
  }
  
  void disconnect(Messenger paramMessenger) {
    sendRequest(2, null, paramMessenger);
  }
  
  void getMediaItem(String paramString, ResultReceiver paramResultReceiver, Messenger paramMessenger) {
    Bundle bundle = new Bundle();
    bundle.putString("data_media_item_id", paramString);
    bundle.putParcelable("data_result_receiver", (Parcelable)paramResultReceiver);
    sendRequest(5, bundle, paramMessenger);
  }
  
  void registerCallbackMessenger(Messenger paramMessenger) {
    Bundle bundle = new Bundle();
    bundle.putBundle("data_root_hints", this.mRootHints);
    sendRequest(6, bundle, paramMessenger);
  }
  
  void removeSubscription(String paramString, IBinder paramIBinder, Messenger paramMessenger) {
    Bundle bundle = new Bundle();
    bundle.putString("data_media_item_id", paramString);
    BundleCompat.putBinder(bundle, "data_callback_token", paramIBinder);
    sendRequest(4, bundle, paramMessenger);
  }
  
  void search(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver, Messenger paramMessenger) {
    Bundle bundle = new Bundle();
    bundle.putString("data_search_query", paramString);
    bundle.putBundle("data_search_extras", paramBundle);
    bundle.putParcelable("data_result_receiver", (Parcelable)paramResultReceiver);
    sendRequest(8, bundle, paramMessenger);
  }
  
  void unregisterCallbackMessenger(Messenger paramMessenger) {
    sendRequest(7, null, paramMessenger);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$ServiceBinderWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */