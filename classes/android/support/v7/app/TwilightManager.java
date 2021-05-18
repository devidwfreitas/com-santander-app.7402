package android.support.v7.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.PermissionChecker;
import android.util.Log;
import java.util.Calendar;

class TwilightManager {
  private static final int SUNRISE = 6;
  
  private static final int SUNSET = 22;
  
  private static final String TAG = "TwilightManager";
  
  private static TwilightManager sInstance;
  
  private final Context mContext;
  
  private final LocationManager mLocationManager;
  
  private final TwilightManager$TwilightState mTwilightState = new TwilightManager$TwilightState();
  
  @VisibleForTesting
  TwilightManager(@NonNull Context paramContext, @NonNull LocationManager paramLocationManager) {
    this.mContext = paramContext;
    this.mLocationManager = paramLocationManager;
  }
  
  static TwilightManager getInstance(@NonNull Context paramContext) {
    if (sInstance == null) {
      paramContext = paramContext.getApplicationContext();
      sInstance = new TwilightManager(paramContext, (LocationManager)paramContext.getSystemService("location"));
    } 
    return sInstance;
  }
  
  private Location getLastKnownLocation() {
    Location location1;
    Location location2 = null;
    if (PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
      location1 = getLastKnownLocationForProvider("network");
    } else {
      location1 = null;
    } 
    if (PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0)
      location2 = getLastKnownLocationForProvider("gps"); 
    if (location2 != null && location1 != null) {
      Location location = location1;
      if (location2.getTime() > location1.getTime())
        location = location2; 
      return location;
    } 
    if (location2 == null)
      location2 = location1; 
    return location2;
  }
  
  private Location getLastKnownLocationForProvider(String paramString) {
    if (this.mLocationManager != null)
      try {
        if (this.mLocationManager.isProviderEnabled(paramString))
          return this.mLocationManager.getLastKnownLocation(paramString); 
      } catch (Exception exception) {
        Log.d("TwilightManager", "Failed to get last known location", exception);
      }  
    return null;
  }
  
  private boolean isStateValid() {
    return (this.mTwilightState != null && this.mTwilightState.nextUpdate > System.currentTimeMillis());
  }
  
  @VisibleForTesting
  static void setInstance(TwilightManager paramTwilightManager) {
    sInstance = paramTwilightManager;
  }
  
  private void updateState(@NonNull Location paramLocation) {
    boolean bool;
    TwilightManager$TwilightState twilightManager$TwilightState = this.mTwilightState;
    long l1 = System.currentTimeMillis();
    TwilightCalculator twilightCalculator = TwilightCalculator.getInstance();
    twilightCalculator.calculateTwilight(l1 - 86400000L, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l2 = twilightCalculator.sunset;
    twilightCalculator.calculateTwilight(l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    if (twilightCalculator.state == 1) {
      bool = true;
    } else {
      bool = false;
    } 
    long l3 = twilightCalculator.sunrise;
    long l4 = twilightCalculator.sunset;
    twilightCalculator.calculateTwilight(86400000L + l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l5 = twilightCalculator.sunrise;
    if (l3 == -1L || l4 == -1L) {
      l1 = 43200000L + l1;
    } else {
      if (l1 > l4) {
        l1 = 0L + l5;
      } else if (l1 > l3) {
        l1 = 0L + l4;
      } else {
        l1 = 0L + l3;
      } 
      l1 += 60000L;
    } 
    twilightManager$TwilightState.isNight = bool;
    twilightManager$TwilightState.yesterdaySunset = l2;
    twilightManager$TwilightState.todaySunrise = l3;
    twilightManager$TwilightState.todaySunset = l4;
    twilightManager$TwilightState.tomorrowSunrise = l5;
    twilightManager$TwilightState.nextUpdate = l1;
  }
  
  boolean isNight() {
    TwilightManager$TwilightState twilightManager$TwilightState = this.mTwilightState;
    if (isStateValid())
      return twilightManager$TwilightState.isNight; 
    Location location = getLastKnownLocation();
    if (location != null) {
      updateState(location);
      return twilightManager$TwilightState.isNight;
    } 
    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
    int i = Calendar.getInstance().get(11);
    return (i < 6 || i >= 22);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\TwilightManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */