package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import cnu;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import csp;
import edo;
import efk;

public final class CameraPosition extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<CameraPosition> CREATOR = (Parcelable.Creator<CameraPosition>)new efk();
  
  public final LatLng a;
  
  public final float b;
  
  public final float c;
  
  public final float d;
  
  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3) {
    boolean bool;
    csp.a(paramLatLng, "null camera target");
    if (0.0F <= paramFloat2 && paramFloat2 <= 90.0F) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "Tilt needs to be between 0 and 90 inclusive: %s", new Object[] { Float.valueOf(paramFloat2) });
    this.a = paramLatLng;
    this.b = paramFloat1;
    this.c = paramFloat2 + 0.0F;
    paramFloat1 = paramFloat3;
    if (paramFloat3 <= 0.0D)
      paramFloat1 = paramFloat3 % 360.0F + 360.0F; 
    this.d = paramFloat1 % 360.0F;
  }
  
  public static CameraPosition a(Context paramContext, AttributeSet paramAttributeSet) {
    float f1;
    float f2;
    if (paramAttributeSet == null)
      return null; 
    TypedArray typedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, cnu.MapAttrs);
    if (typedArray.hasValue(cnu.MapAttrs_cameraTargetLat)) {
      f1 = typedArray.getFloat(cnu.MapAttrs_cameraTargetLat, 0.0F);
    } else {
      f1 = 0.0F;
    } 
    if (typedArray.hasValue(cnu.MapAttrs_cameraTargetLng)) {
      f2 = typedArray.getFloat(cnu.MapAttrs_cameraTargetLng, 0.0F);
    } else {
      f2 = 0.0F;
    } 
    LatLng latLng = new LatLng(f1, f2);
    edo edo = a();
    edo.a(latLng);
    if (typedArray.hasValue(cnu.MapAttrs_cameraZoom))
      edo.a(typedArray.getFloat(cnu.MapAttrs_cameraZoom, 0.0F)); 
    if (typedArray.hasValue(cnu.MapAttrs_cameraBearing))
      edo.c(typedArray.getFloat(cnu.MapAttrs_cameraBearing, 0.0F)); 
    if (typedArray.hasValue(cnu.MapAttrs_cameraTilt))
      edo.b(typedArray.getFloat(cnu.MapAttrs_cameraTilt, 0.0F)); 
    return edo.a();
  }
  
  public static final CameraPosition a(LatLng paramLatLng, float paramFloat) {
    return new CameraPosition(paramLatLng, paramFloat, 0.0F, 0.0F);
  }
  
  public static edo a() {
    return new edo();
  }
  
  public static edo a(CameraPosition paramCameraPosition) {
    return new edo(paramCameraPosition);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof CameraPosition))
        return false; 
      paramObject = paramObject;
      if (!this.a.equals(((CameraPosition)paramObject).a) || Float.floatToIntBits(this.b) != Float.floatToIntBits(((CameraPosition)paramObject).b) || Float.floatToIntBits(this.c) != Float.floatToIntBits(((CameraPosition)paramObject).c) || Float.floatToIntBits(this.d) != Float.floatToIntBits(((CameraPosition)paramObject).d))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a, Float.valueOf(this.b), Float.valueOf(this.c), Float.valueOf(this.d) });
  }
  
  public String toString() {
    return csg.a(this).a("target", this.a).a("zoom", Float.valueOf(this.b)).a("tilt", Float.valueOf(this.c)).a("bearing", Float.valueOf(this.d)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efk.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\CameraPosition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */