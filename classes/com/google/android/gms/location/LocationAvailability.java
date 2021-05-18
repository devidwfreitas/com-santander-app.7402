package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import dur;

public final class LocationAvailability extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<LocationAvailability> CREATOR = (Parcelable.Creator<LocationAvailability>)new dur();
  
  public int a;
  
  public int b;
  
  public long c;
  
  public int d;
  
  public LocationAvailability(int paramInt1, int paramInt2, int paramInt3, long paramLong) {
    this.d = paramInt1;
    this.a = paramInt2;
    this.b = paramInt3;
    this.c = paramLong;
  }
  
  public static boolean a(Intent paramIntent) {
    return (paramIntent == null) ? false : paramIntent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
  }
  
  public static LocationAvailability b(Intent paramIntent) {
    return !a(paramIntent) ? null : (LocationAvailability)paramIntent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
  }
  
  public boolean a() {
    return (this.d < 1000);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof LocationAvailability) {
      paramObject = paramObject;
      if (this.d == ((LocationAvailability)paramObject).d && this.a == ((LocationAvailability)paramObject).a && this.b == ((LocationAvailability)paramObject).b && this.c == ((LocationAvailability)paramObject).c)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.d), Integer.valueOf(this.a), Integer.valueOf(this.b), Long.valueOf(this.c) });
  }
  
  public String toString() {
    boolean bool = a();
    return (new StringBuilder(48)).append("LocationAvailability[isLocationAvailable: ").append(bool).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dur.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\LocationAvailability.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */