package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.app.BundleCompat;
import java.lang.ref.WeakReference;

class MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver extends ResultReceiver {
  private WeakReference<MediaControllerCompat$MediaControllerImplApi21> mMediaControllerImpl;
  
  public MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver(MediaControllerCompat$MediaControllerImplApi21 paramMediaControllerCompat$MediaControllerImplApi21, Handler paramHandler) {
    super(paramHandler);
    this.mMediaControllerImpl = new WeakReference<MediaControllerCompat$MediaControllerImplApi21>(paramMediaControllerCompat$MediaControllerImplApi21);
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {
    MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.mMediaControllerImpl.get();
    if (mediaControllerCompat$MediaControllerImplApi21 == null || paramBundle == null)
      return; 
    MediaControllerCompat$MediaControllerImplApi21.access$002(mediaControllerCompat$MediaControllerImplApi21, IMediaSession$Stub.asInterface(BundleCompat.getBinder(paramBundle, "android.support.v4.media.session.EXTRA_BINDER")));
    MediaControllerCompat$MediaControllerImplApi21.access$300(mediaControllerCompat$MediaControllerImplApi21);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */