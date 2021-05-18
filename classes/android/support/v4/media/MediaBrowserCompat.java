package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.BuildCompat;
import android.text.TextUtils;
import android.util.Log;

public final class MediaBrowserCompat {
  static final boolean DEBUG = Log.isLoggable("MediaBrowserCompat", 3);
  
  public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
  
  public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";
  
  static final String TAG = "MediaBrowserCompat";
  
  private final MediaBrowserCompat$MediaBrowserImpl mImpl;
  
  public MediaBrowserCompat(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat$ConnectionCallback paramMediaBrowserCompat$ConnectionCallback, Bundle paramBundle) {
    if (Build.VERSION.SDK_INT >= 26 || BuildCompat.isAtLeastO()) {
      this.mImpl = new MediaBrowserCompat$MediaBrowserImplApi24(paramContext, paramComponentName, paramMediaBrowserCompat$ConnectionCallback, paramBundle);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 23) {
      this.mImpl = new MediaBrowserCompat$MediaBrowserImplApi23(paramContext, paramComponentName, paramMediaBrowserCompat$ConnectionCallback, paramBundle);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      this.mImpl = new MediaBrowserCompat$MediaBrowserImplApi21(paramContext, paramComponentName, paramMediaBrowserCompat$ConnectionCallback, paramBundle);
      return;
    } 
    this.mImpl = new MediaBrowserCompat$MediaBrowserImplBase(paramContext, paramComponentName, paramMediaBrowserCompat$ConnectionCallback, paramBundle);
  }
  
  public void connect() {
    this.mImpl.connect();
  }
  
  public void disconnect() {
    this.mImpl.disconnect();
  }
  
  @Nullable
  public Bundle getExtras() {
    return this.mImpl.getExtras();
  }
  
  public void getItem(@NonNull String paramString, @NonNull MediaBrowserCompat$ItemCallback paramMediaBrowserCompat$ItemCallback) {
    this.mImpl.getItem(paramString, paramMediaBrowserCompat$ItemCallback);
  }
  
  @NonNull
  public String getRoot() {
    return this.mImpl.getRoot();
  }
  
  @NonNull
  public ComponentName getServiceComponent() {
    return this.mImpl.getServiceComponent();
  }
  
  @NonNull
  public MediaSessionCompat.Token getSessionToken() {
    return this.mImpl.getSessionToken();
  }
  
  public boolean isConnected() {
    return this.mImpl.isConnected();
  }
  
  public void search(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat$SearchCallback paramMediaBrowserCompat$SearchCallback) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("query cannot be empty"); 
    if (paramMediaBrowserCompat$SearchCallback == null)
      throw new IllegalArgumentException("callback cannot be null"); 
    this.mImpl.search(paramString, paramBundle, paramMediaBrowserCompat$SearchCallback);
  }
  
  public void subscribe(@NonNull String paramString, @NonNull Bundle paramBundle, @NonNull MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("parentId is empty"); 
    if (paramMediaBrowserCompat$SubscriptionCallback == null)
      throw new IllegalArgumentException("callback is null"); 
    if (paramBundle == null)
      throw new IllegalArgumentException("options are null"); 
    this.mImpl.subscribe(paramString, paramBundle, paramMediaBrowserCompat$SubscriptionCallback);
  }
  
  public void subscribe(@NonNull String paramString, @NonNull MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("parentId is empty"); 
    if (paramMediaBrowserCompat$SubscriptionCallback == null)
      throw new IllegalArgumentException("callback is null"); 
    this.mImpl.subscribe(paramString, null, paramMediaBrowserCompat$SubscriptionCallback);
  }
  
  public void unsubscribe(@NonNull String paramString) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("parentId is empty"); 
    this.mImpl.unsubscribe(paramString, null);
  }
  
  public void unsubscribe(@NonNull String paramString, @NonNull MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("parentId is empty"); 
    if (paramMediaBrowserCompat$SubscriptionCallback == null)
      throw new IllegalArgumentException("callback is null"); 
    this.mImpl.unsubscribe(paramString, paramMediaBrowserCompat$SubscriptionCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */