package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.List;

interface MediaBrowserCompatApi24$SubscriptionCallback extends MediaBrowserCompatApi21$SubscriptionCallback {
  void onChildrenLoaded(@NonNull String paramString, List<?> paramList, @NonNull Bundle paramBundle);
  
  void onError(@NonNull String paramString, @NonNull Bundle paramBundle);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompatApi24$SubscriptionCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */