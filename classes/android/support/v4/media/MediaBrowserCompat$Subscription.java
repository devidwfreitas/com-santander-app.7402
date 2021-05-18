package android.support.v4.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserCompat$Subscription {
  private final List<MediaBrowserCompat$SubscriptionCallback> mCallbacks = new ArrayList<MediaBrowserCompat$SubscriptionCallback>();
  
  private final List<Bundle> mOptionsList = new ArrayList<Bundle>();
  
  public MediaBrowserCompat$SubscriptionCallback getCallback(Bundle paramBundle) {
    for (int i = 0; i < this.mOptionsList.size(); i++) {
      if (MediaBrowserCompatUtils.areSameOptions(this.mOptionsList.get(i), paramBundle))
        return this.mCallbacks.get(i); 
    } 
    return null;
  }
  
  public List<MediaBrowserCompat$SubscriptionCallback> getCallbacks() {
    return this.mCallbacks;
  }
  
  public List<Bundle> getOptionsList() {
    return this.mOptionsList;
  }
  
  public boolean isEmpty() {
    return this.mCallbacks.isEmpty();
  }
  
  public void putCallback(Bundle paramBundle, MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    for (int i = 0; i < this.mOptionsList.size(); i++) {
      if (MediaBrowserCompatUtils.areSameOptions(this.mOptionsList.get(i), paramBundle)) {
        this.mCallbacks.set(i, paramMediaBrowserCompat$SubscriptionCallback);
        return;
      } 
    } 
    this.mCallbacks.add(paramMediaBrowserCompat$SubscriptionCallback);
    this.mOptionsList.add(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$Subscription.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */