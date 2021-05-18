package android.support.v4.media;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.BundleCompat;
import android.support.v4.os.ResultReceiver;
import android.util.Log;

final class MediaBrowserServiceCompat$ServiceHandler extends Handler {
  private final MediaBrowserServiceCompat$ServiceBinderImpl mServiceBinderImpl = new MediaBrowserServiceCompat$ServiceBinderImpl(MediaBrowserServiceCompat.this);
  
  public void handleMessage(Message paramMessage) {
    Bundle bundle = paramMessage.getData();
    switch (paramMessage.what) {
      default:
        Log.w("MBServiceCompat", "Unhandled message: " + paramMessage + "\n  Service version: " + '\001' + "\n  Client version: " + paramMessage.arg1);
        return;
      case 1:
        this.mServiceBinderImpl.connect(bundle.getString("data_package_name"), bundle.getInt("data_calling_uid"), bundle.getBundle("data_root_hints"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo));
        return;
      case 2:
        this.mServiceBinderImpl.disconnect(new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo));
        return;
      case 3:
        this.mServiceBinderImpl.addSubscription(bundle.getString("data_media_item_id"), BundleCompat.getBinder(bundle, "data_callback_token"), bundle.getBundle("data_options"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo));
        return;
      case 4:
        this.mServiceBinderImpl.removeSubscription(bundle.getString("data_media_item_id"), BundleCompat.getBinder(bundle, "data_callback_token"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo));
        return;
      case 5:
        this.mServiceBinderImpl.getMediaItem(bundle.getString("data_media_item_id"), (ResultReceiver)bundle.getParcelable("data_result_receiver"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo));
        return;
      case 6:
        this.mServiceBinderImpl.registerCallbacks(new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo), bundle.getBundle("data_root_hints"));
        return;
      case 7:
        this.mServiceBinderImpl.unregisterCallbacks(new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo));
        return;
      case 8:
        break;
    } 
    this.mServiceBinderImpl.search(bundle.getString("data_search_query"), bundle.getBundle("data_search_extras"), (ResultReceiver)bundle.getParcelable("data_result_receiver"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(MediaBrowserServiceCompat.this, paramMessage.replyTo));
  }
  
  public void postOrRun(Runnable paramRunnable) {
    if (Thread.currentThread() == getLooper().getThread()) {
      paramRunnable.run();
      return;
    } 
    post(paramRunnable);
  }
  
  public boolean sendMessageAtTime(Message paramMessage, long paramLong) {
    Bundle bundle = paramMessage.getData();
    bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
    bundle.putInt("data_calling_uid", Binder.getCallingUid());
    return super.sendMessageAtTime(paramMessage, paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$ServiceHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */