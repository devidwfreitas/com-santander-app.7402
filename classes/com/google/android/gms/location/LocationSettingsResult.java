package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import cqg;
import duw;

public final class LocationSettingsResult extends zza implements cqg {
  public static final Parcelable.Creator<LocationSettingsResult> CREATOR = (Parcelable.Creator<LocationSettingsResult>)new duw();
  
  private final Status a;
  
  private final LocationSettingsStates b;
  
  public LocationSettingsResult(Status paramStatus) {
    this(paramStatus, null);
  }
  
  public LocationSettingsResult(Status paramStatus, LocationSettingsStates paramLocationSettingsStates) {
    this.a = paramStatus;
    this.b = paramLocationSettingsStates;
  }
  
  public Status a() {
    return this.a;
  }
  
  public LocationSettingsStates b() {
    return this.b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    duw.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\LocationSettingsResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */