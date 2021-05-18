package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import csp;
import edz;
import eea;
import efw;

public class StreetViewPanoramaCamera extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<StreetViewPanoramaCamera> CREATOR = (Parcelable.Creator<StreetViewPanoramaCamera>)new efw();
  
  public final float a;
  
  public final float b;
  
  public final float c;
  
  private StreetViewPanoramaOrientation d;
  
  public StreetViewPanoramaCamera(float paramFloat1, float paramFloat2, float paramFloat3) {
    boolean bool;
    if (-90.0F <= paramFloat2 && paramFloat2 <= 90.0F) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "Tilt needs to be between -90 and 90 inclusive");
    float f = paramFloat1;
    if (paramFloat1 <= 0.0D)
      f = 0.0F; 
    this.a = f;
    this.b = paramFloat2 + 0.0F;
    if (paramFloat3 <= 0.0D) {
      paramFloat1 = paramFloat3 % 360.0F + 360.0F;
    } else {
      paramFloat1 = paramFloat3;
    } 
    this.c = paramFloat1 % 360.0F;
    this.d = (new eea()).a(paramFloat2).b(paramFloat3).a();
  }
  
  public static edz a() {
    return new edz();
  }
  
  public static edz a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera) {
    return new edz(paramStreetViewPanoramaCamera);
  }
  
  public StreetViewPanoramaOrientation b() {
    return this.d;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof StreetViewPanoramaCamera))
        return false; 
      paramObject = paramObject;
      if (Float.floatToIntBits(this.a) != Float.floatToIntBits(((StreetViewPanoramaCamera)paramObject).a) || Float.floatToIntBits(this.b) != Float.floatToIntBits(((StreetViewPanoramaCamera)paramObject).b) || Float.floatToIntBits(this.c) != Float.floatToIntBits(((StreetViewPanoramaCamera)paramObject).c))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Float.valueOf(this.a), Float.valueOf(this.b), Float.valueOf(this.c) });
  }
  
  public String toString() {
    return csg.a(this).a("zoom", Float.valueOf(this.a)).a("tilt", Float.valueOf(this.b)).a("bearing", Float.valueOf(this.c)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efw.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\StreetViewPanoramaCamera.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */