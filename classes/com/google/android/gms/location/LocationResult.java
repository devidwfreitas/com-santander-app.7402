package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import dut;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class LocationResult extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<LocationResult> CREATOR;
  
  public static final List<Location> a = Collections.emptyList();
  
  private final List<Location> b;
  
  static {
    CREATOR = (Parcelable.Creator<LocationResult>)new dut();
  }
  
  public LocationResult(List<Location> paramList) {
    this.b = paramList;
  }
  
  public static LocationResult a(List<Location> paramList) {
    List<Location> list = paramList;
    if (paramList == null)
      list = a; 
    return new LocationResult(list);
  }
  
  public static boolean a(Intent paramIntent) {
    return (paramIntent == null) ? false : paramIntent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
  }
  
  public static LocationResult b(Intent paramIntent) {
    return !a(paramIntent) ? null : (LocationResult)paramIntent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
  }
  
  public Location a() {
    int i = this.b.size();
    return (i == 0) ? null : this.b.get(i - 1);
  }
  
  @NonNull
  public List<Location> b() {
    return this.b;
  }
  
  public boolean equals(Object<Location> paramObject) {
    if (!(paramObject instanceof LocationResult))
      return false; 
    paramObject = paramObject;
    if (((LocationResult)paramObject).b.size() != this.b.size())
      return false; 
    paramObject = (Object<Location>)((LocationResult)paramObject).b.iterator();
    Iterator<Location> iterator = this.b.iterator();
    while (paramObject.hasNext()) {
      Location location1 = iterator.next();
      Location location2 = paramObject.next();
      if (location1.getTime() != location2.getTime())
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    Iterator<Location> iterator = this.b.iterator();
    int i;
    for (i = 17; iterator.hasNext(); i = (int)(l ^ l >>> 32L) + i * 31)
      long l = ((Location)iterator.next()).getTime(); 
    return i;
  }
  
  public String toString() {
    String str = String.valueOf(this.b);
    return (new StringBuilder(String.valueOf(str).length() + 27)).append("LocationResult[locations: ").append(str).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dut.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\LocationResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */