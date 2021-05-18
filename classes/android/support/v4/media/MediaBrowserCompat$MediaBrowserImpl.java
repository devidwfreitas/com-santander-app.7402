package android.support.v4.media;

import android.content.ComponentName;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.session.MediaSessionCompat;

interface MediaBrowserCompat$MediaBrowserImpl {
  void connect();
  
  void disconnect();
  
  @Nullable
  Bundle getExtras();
  
  void getItem(@NonNull String paramString, @NonNull MediaBrowserCompat$ItemCallback paramMediaBrowserCompat$ItemCallback);
  
  @NonNull
  String getRoot();
  
  ComponentName getServiceComponent();
  
  @NonNull
  MediaSessionCompat.Token getSessionToken();
  
  boolean isConnected();
  
  void search(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat$SearchCallback paramMediaBrowserCompat$SearchCallback);
  
  void subscribe(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback);
  
  void unsubscribe(@NonNull String paramString, MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */