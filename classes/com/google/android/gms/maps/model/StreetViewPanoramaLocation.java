package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import efy;

public class StreetViewPanoramaLocation extends zza {
  public static final Parcelable.Creator<StreetViewPanoramaLocation> CREATOR = (Parcelable.Creator<StreetViewPanoramaLocation>)new efy();
  
  public final StreetViewPanoramaLink[] a;
  
  public final LatLng b;
  
  public final String c;
  
  public StreetViewPanoramaLocation(StreetViewPanoramaLink[] paramArrayOfStreetViewPanoramaLink, LatLng paramLatLng, String paramString) {
    this.a = paramArrayOfStreetViewPanoramaLink;
    this.b = paramLatLng;
    this.c = paramString;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof StreetViewPanoramaLocation))
        return false; 
      paramObject = paramObject;
      if (!this.c.equals(((StreetViewPanoramaLocation)paramObject).c) || !this.b.equals(((StreetViewPanoramaLocation)paramObject).b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.b, this.c });
  }
  
  public String toString() {
    return csg.a(this).a("panoId", this.c).a("position", this.b.toString()).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efy.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\StreetViewPanoramaLocation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */