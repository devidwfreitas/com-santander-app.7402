package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cse;
import dux;

public final class LocationSettingsStates extends zza {
  public static final Parcelable.Creator<LocationSettingsStates> CREATOR = (Parcelable.Creator<LocationSettingsStates>)new dux();
  
  private final boolean a;
  
  private final boolean b;
  
  private final boolean c;
  
  private final boolean d;
  
  private final boolean e;
  
  private final boolean f;
  
  public LocationSettingsStates(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6) {
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.c = paramBoolean3;
    this.d = paramBoolean4;
    this.e = paramBoolean5;
    this.f = paramBoolean6;
  }
  
  public static LocationSettingsStates a(Intent paramIntent) {
    return (LocationSettingsStates)cse.a(paramIntent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
  }
  
  public boolean a() {
    return this.a;
  }
  
  public boolean b() {
    return this.d;
  }
  
  public boolean c() {
    return this.b;
  }
  
  public boolean d() {
    return this.e;
  }
  
  public boolean e() {
    return (this.a || this.b);
  }
  
  public boolean f() {
    return (this.d || this.e);
  }
  
  public boolean g() {
    return this.c;
  }
  
  public boolean h() {
    return this.f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dux.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\LocationSettingsStates.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */