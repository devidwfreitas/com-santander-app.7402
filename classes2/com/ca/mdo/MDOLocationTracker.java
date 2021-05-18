package com.ca.mdo;

import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

class MDOLocationTracker implements LocationListener {
  public static final long BASE_MIN_LOCATION_UPDATE = 300000L;
  
  public static final long MIN_DISTANCE_CHANGE_FOR_UPDATES = 500L;
  
  public static final long MIN_TIME_BETWEEN_UPDATES = 600000L;
  
  public Location lastLocation;
  
  public LocationManager locationManager = (LocationManager)SDK.getApp().getSystemService("location");
  
  public boolean trackingLocation = false;
  
  private void stopLocationChanges() {
    this.locationManager.removeUpdates(this);
    this.trackingLocation = false;
  }
  
  private void subscribeToLocationChanges(String paramString) {
    try {
      this.locationManager.requestLocationUpdates(paramString, 600000L, 500.0F, this);
      this.trackingLocation = true;
      return;
    } catch (Exception exception) {
      this.trackingLocation = false;
      return;
    } 
  }
  
  public Location getLastLocation() {
    return this.lastLocation;
  }
  
  public void onLocationChanged(Location paramLocation) {
    this.lastLocation = paramLocation;
    CAMobileDevOps.updateLocationChangesToHeader(paramLocation);
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
  
  public void startTrackingUpdates(int paramInt) {
    if (paramInt > 1) {
      Criteria criteria = new Criteria();
      criteria.setAccuracy(2);
      subscribeToLocationChanges(this.locationManager.getBestProvider(criteria, true));
    } 
  }
  
  public void stopTrackingUpdates() {
    stopLocationChanges();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MDOLocationTracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */