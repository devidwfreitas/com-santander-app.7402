package com.adjust.sdk;

public class ActivityHandler$InternalState {
  boolean background;
  
  boolean delayStart;
  
  boolean enabled;
  
  boolean firstLaunch;
  
  boolean offline;
  
  boolean sessionResponseProcessed;
  
  boolean updatePackages;
  
  public boolean hasSessionResponseNotBeenProcessed() {
    return !this.sessionResponseProcessed;
  }
  
  public boolean isDisabled() {
    return !this.enabled;
  }
  
  public boolean isEnabled() {
    return this.enabled;
  }
  
  public boolean isFirstLaunch() {
    return this.firstLaunch;
  }
  
  public boolean isInBackground() {
    return this.background;
  }
  
  public boolean isInDelayedStart() {
    return this.delayStart;
  }
  
  public boolean isInForeground() {
    return !this.background;
  }
  
  public boolean isNotFirstLaunch() {
    return !this.firstLaunch;
  }
  
  public boolean isNotInDelayedStart() {
    return !this.delayStart;
  }
  
  public boolean isOffline() {
    return this.offline;
  }
  
  public boolean isOnline() {
    return !this.offline;
  }
  
  public boolean itHasToUpdatePackages() {
    return this.updatePackages;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ActivityHandler$InternalState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */