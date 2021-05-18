package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import efx;

public class StreetViewPanoramaLink extends zza {
  public static final Parcelable.Creator<StreetViewPanoramaLink> CREATOR = (Parcelable.Creator<StreetViewPanoramaLink>)new efx();
  
  public final String a;
  
  public final float b;
  
  public StreetViewPanoramaLink(String paramString, float paramFloat) {
    this.a = paramString;
    float f = paramFloat;
    if (paramFloat <= 0.0D)
      f = paramFloat % 360.0F + 360.0F; 
    this.b = f % 360.0F;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof StreetViewPanoramaLink))
        return false; 
      paramObject = paramObject;
      if (!this.a.equals(((StreetViewPanoramaLink)paramObject).a) || Float.floatToIntBits(this.b) != Float.floatToIntBits(((StreetViewPanoramaLink)paramObject).b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a, Float.valueOf(this.b) });
  }
  
  public String toString() {
    return csg.a(this).a("panoId", this.a).a("bearing", Float.valueOf(this.b)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efx.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\StreetViewPanoramaLink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */