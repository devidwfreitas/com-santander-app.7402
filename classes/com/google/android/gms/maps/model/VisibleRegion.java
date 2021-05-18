package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import egc;

public final class VisibleRegion extends zza {
  public static final Parcelable.Creator<VisibleRegion> CREATOR = (Parcelable.Creator<VisibleRegion>)new egc();
  
  public final LatLng a;
  
  public final LatLng b;
  
  public final LatLng c;
  
  public final LatLng d;
  
  public final LatLngBounds e;
  
  public VisibleRegion(LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds) {
    this.a = paramLatLng1;
    this.b = paramLatLng2;
    this.c = paramLatLng3;
    this.d = paramLatLng4;
    this.e = paramLatLngBounds;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof VisibleRegion))
        return false; 
      paramObject = paramObject;
      if (!this.a.equals(((VisibleRegion)paramObject).a) || !this.b.equals(((VisibleRegion)paramObject).b) || !this.c.equals(((VisibleRegion)paramObject).c) || !this.d.equals(((VisibleRegion)paramObject).d) || !this.e.equals(((VisibleRegion)paramObject).e))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a, this.b, this.c, this.d, this.e });
  }
  
  public String toString() {
    return csg.a(this).a("nearLeft", this.a).a("nearRight", this.b).a("farLeft", this.c).a("farRight", this.d).a("latLngBounds", this.e).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    egc.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\VisibleRegion.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */