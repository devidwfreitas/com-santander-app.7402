package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import eft;

public final class PointOfInterest extends zza {
  public static final Parcelable.Creator<PointOfInterest> CREATOR = (Parcelable.Creator<PointOfInterest>)new eft();
  
  public final LatLng a;
  
  public final String b;
  
  public final String c;
  
  public PointOfInterest(LatLng paramLatLng, String paramString1, String paramString2) {
    this.a = paramLatLng;
    this.b = paramString1;
    this.c = paramString2;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    eft.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\PointOfInterest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */