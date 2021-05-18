package android.support.v4.media;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.v4.os.BuildCompat;
import java.lang.ref.WeakReference;
import java.util.List;

public abstract class MediaBrowserCompat$SubscriptionCallback {
  private final Object mSubscriptionCallbackObj;
  
  WeakReference<MediaBrowserCompat$Subscription> mSubscriptionRef;
  
  private final IBinder mToken;
  
  public MediaBrowserCompat$SubscriptionCallback() {
    if (Build.VERSION.SDK_INT >= 26 || BuildCompat.isAtLeastO()) {
      this.mSubscriptionCallbackObj = MediaBrowserCompatApi24.createSubscriptionCallback(new MediaBrowserCompat$SubscriptionCallback$StubApi24(this));
      this.mToken = null;
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      this.mSubscriptionCallbackObj = MediaBrowserCompatApi21.createSubscriptionCallback(new MediaBrowserCompat$SubscriptionCallback$StubApi21(this));
      this.mToken = (IBinder)new Binder();
      return;
    } 
    this.mSubscriptionCallbackObj = null;
    this.mToken = (IBinder)new Binder();
  }
  
  private void setSubscription(MediaBrowserCompat$Subscription paramMediaBrowserCompat$Subscription) {
    this.mSubscriptionRef = new WeakReference<MediaBrowserCompat$Subscription>(paramMediaBrowserCompat$Subscription);
  }
  
  public void onChildrenLoaded(@NonNull String paramString, @NonNull List<MediaBrowserCompat$MediaItem> paramList) {}
  
  public void onChildrenLoaded(@NonNull String paramString, @NonNull List<MediaBrowserCompat$MediaItem> paramList, @NonNull Bundle paramBundle) {}
  
  public void onError(@NonNull String paramString) {}
  
  public void onError(@NonNull String paramString, @NonNull Bundle paramBundle) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$SubscriptionCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */