package android.support.v4.media;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.lang.ref.WeakReference;

class MediaBrowserCompat$CallbackHandler extends Handler {
  private final WeakReference<MediaBrowserCompat$MediaBrowserServiceCallbackImpl> mCallbackImplRef;
  
  private WeakReference<Messenger> mCallbacksMessengerRef;
  
  MediaBrowserCompat$CallbackHandler(MediaBrowserCompat$MediaBrowserServiceCallbackImpl paramMediaBrowserCompat$MediaBrowserServiceCallbackImpl) {
    this.mCallbackImplRef = new WeakReference<MediaBrowserCompat$MediaBrowserServiceCallbackImpl>(paramMediaBrowserCompat$MediaBrowserServiceCallbackImpl);
  }
  
  public void handleMessage(Message paramMessage) {
    if (this.mCallbacksMessengerRef == null || this.mCallbacksMessengerRef.get() == null || this.mCallbackImplRef.get() == null)
      return; 
    Bundle bundle = paramMessage.getData();
    bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
    switch (paramMessage.what) {
      default:
        Log.w("MediaBrowserCompat", "Unhandled message: " + paramMessage + "\n  Client version: " + '\001' + "\n  Service version: " + paramMessage.arg1);
        return;
      case 1:
        ((MediaBrowserCompat$MediaBrowserServiceCallbackImpl)this.mCallbackImplRef.get()).onServiceConnected(this.mCallbacksMessengerRef.get(), bundle.getString("data_media_item_id"), (MediaSessionCompat.Token)bundle.getParcelable("data_media_session_token"), bundle.getBundle("data_root_hints"));
        return;
      case 2:
        ((MediaBrowserCompat$MediaBrowserServiceCallbackImpl)this.mCallbackImplRef.get()).onConnectionFailed(this.mCallbacksMessengerRef.get());
        return;
      case 3:
        break;
    } 
    ((MediaBrowserCompat$MediaBrowserServiceCallbackImpl)this.mCallbackImplRef.get()).onLoadChildren(this.mCallbacksMessengerRef.get(), bundle.getString("data_media_item_id"), bundle.getParcelableArrayList("data_media_item_list"), bundle.getBundle("data_options"));
  }
  
  void setCallbacksMessenger(Messenger paramMessenger) {
    this.mCallbacksMessengerRef = new WeakReference<Messenger>(paramMessenger);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$CallbackHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */