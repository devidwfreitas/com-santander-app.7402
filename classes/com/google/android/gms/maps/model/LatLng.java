package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import efp;

public final class LatLng extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<LatLng> CREATOR = (Parcelable.Creator<LatLng>)new efp();
  
  public final double a;
  
  public final double b;
  
  public LatLng(double paramDouble1, double paramDouble2) {
    if (-180.0D <= paramDouble2 && paramDouble2 < 180.0D) {
      this.b = paramDouble2;
    } else {
      this.b = ((paramDouble2 - 180.0D) % 360.0D + 360.0D) % 360.0D - 180.0D;
    } 
    this.a = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof LatLng))
        return false; 
      paramObject = paramObject;
      if (Double.doubleToLongBits(this.a) != Double.doubleToLongBits(((LatLng)paramObject).a) || Double.doubleToLongBits(this.b) != Double.doubleToLongBits(((LatLng)paramObject).b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    long l = Double.doubleToLongBits(this.a);
    int i = (int)(l ^ l >>> 32L);
    l = Double.doubleToLongBits(this.b);
    return (i + 31) * 31 + (int)(l ^ l >>> 32L);
  }
  
  public String toString() {
    double d1 = this.a;
    double d2 = this.b;
    return (new StringBuilder(60)).append("lat/lng: (").append(d1).append(",").append(d2).append(")").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efp.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\LatLng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */