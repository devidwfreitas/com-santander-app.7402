package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import csp;
import eea;
import efz;

public class StreetViewPanoramaOrientation extends zza {
  public static final Parcelable.Creator<StreetViewPanoramaOrientation> CREATOR = (Parcelable.Creator<StreetViewPanoramaOrientation>)new efz();
  
  public final float a;
  
  public final float b;
  
  public StreetViewPanoramaOrientation(float paramFloat1, float paramFloat2) {
    boolean bool;
    if (-90.0F <= paramFloat1 && paramFloat1 <= 90.0F) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "Tilt needs to be between -90 and 90 inclusive");
    this.a = 0.0F + paramFloat1;
    paramFloat1 = paramFloat2;
    if (paramFloat2 <= 0.0D)
      paramFloat1 = paramFloat2 % 360.0F + 360.0F; 
    this.b = paramFloat1 % 360.0F;
  }
  
  public static eea a() {
    return new eea();
  }
  
  public static eea a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation) {
    return new eea(paramStreetViewPanoramaOrientation);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof StreetViewPanoramaOrientation))
        return false; 
      paramObject = paramObject;
      if (Float.floatToIntBits(this.a) != Float.floatToIntBits(((StreetViewPanoramaOrientation)paramObject).a) || Float.floatToIntBits(this.b) != Float.floatToIntBits(((StreetViewPanoramaOrientation)paramObject).b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Float.valueOf(this.a), Float.valueOf(this.b) });
  }
  
  public String toString() {
    return csg.a(this).a("tilt", Float.valueOf(this.a)).a("bearing", Float.valueOf(this.b)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efz.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\StreetViewPanoramaOrientation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */