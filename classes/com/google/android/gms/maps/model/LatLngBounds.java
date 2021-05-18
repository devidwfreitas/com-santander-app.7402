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
import edu;
import efo;

public final class LatLngBounds extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<LatLngBounds> CREATOR = (Parcelable.Creator<LatLngBounds>)new efo();
  
  public final LatLng a;
  
  public final LatLng b;
  
  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2) {
    boolean bool;
    csp.a(paramLatLng1, "null southwest");
    csp.a(paramLatLng2, "null northeast");
    if (paramLatLng2.a >= paramLatLng1.a) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(paramLatLng1.a), Double.valueOf(paramLatLng2.a) });
    this.a = paramLatLng1;
    this.b = paramLatLng2;
  }
  
  public static LatLngBounds a(Context paramContext, AttributeSet paramAttributeSet) {
    if (paramContext != null && paramAttributeSet != null) {
      Float float_;
      TypedArray typedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, cnu.MapAttrs);
      if (typedArray.hasValue(cnu.MapAttrs_latLngBoundsSouthWestLatitude)) {
        Float float_1 = Float.valueOf(typedArray.getFloat(cnu.MapAttrs_latLngBoundsSouthWestLatitude, 0.0F));
      } else {
        paramContext = null;
      } 
      if (typedArray.hasValue(cnu.MapAttrs_latLngBoundsSouthWestLongitude)) {
        Float float_1 = Float.valueOf(typedArray.getFloat(cnu.MapAttrs_latLngBoundsSouthWestLongitude, 0.0F));
      } else {
        paramAttributeSet = null;
      } 
      if (typedArray.hasValue(cnu.MapAttrs_latLngBoundsNorthEastLatitude)) {
        float_ = Float.valueOf(typedArray.getFloat(cnu.MapAttrs_latLngBoundsNorthEastLatitude, 0.0F));
      } else {
        float_ = null;
      } 
      if (typedArray.hasValue(cnu.MapAttrs_latLngBoundsNorthEastLongitude)) {
        Float float_1 = Float.valueOf(typedArray.getFloat(cnu.MapAttrs_latLngBoundsNorthEastLongitude, 0.0F));
      } else {
        typedArray = null;
      } 
      if (paramContext != null && paramAttributeSet != null && float_ != null && typedArray != null)
        return new LatLngBounds(new LatLng(paramContext.floatValue(), paramAttributeSet.floatValue()), new LatLng(float_.floatValue(), typedArray.floatValue())); 
    } 
    return null;
  }
  
  public static edu a() {
    return new edu();
  }
  
  private boolean a(double paramDouble) {
    return (this.a.a <= paramDouble && paramDouble <= this.b.a);
  }
  
  private boolean b(double paramDouble) {
    boolean bool = false;
    if (this.a.b <= this.b.b)
      return (this.a.b <= paramDouble && paramDouble <= this.b.b); 
    if (this.a.b <= paramDouble || paramDouble <= this.b.b)
      bool = true; 
    return bool;
  }
  
  private static double c(double paramDouble1, double paramDouble2) {
    return (paramDouble1 - paramDouble2 + 360.0D) % 360.0D;
  }
  
  private static double d(double paramDouble1, double paramDouble2) {
    return (paramDouble2 - paramDouble1 + 360.0D) % 360.0D;
  }
  
  public boolean a(LatLng paramLatLng) {
    return (a(paramLatLng.a) && b(paramLatLng.b));
  }
  
  public LatLng b() {
    double d2 = (this.a.a + this.b.a) / 2.0D;
    double d1 = this.b.b;
    double d3 = this.a.b;
    if (d3 <= d1) {
      d1 = (d1 + d3) / 2.0D;
      return new LatLng(d2, d1);
    } 
    d1 = (d1 + 360.0D + d3) / 2.0D;
    return new LatLng(d2, d1);
  }
  
  public LatLngBounds b(LatLng paramLatLng) {
    double d4 = Math.min(this.a.a, paramLatLng.a);
    double d5 = Math.max(this.b.a, paramLatLng.a);
    double d2 = this.b.b;
    double d3 = this.a.b;
    double d1 = paramLatLng.b;
    if (!b(d1)) {
      if (c(d3, d1) >= d(d2, d1)) {
        d2 = d1;
        d1 = d3;
      } 
      return new LatLngBounds(new LatLng(d4, d1), new LatLng(d5, d2));
    } 
    d1 = d3;
    return new LatLngBounds(new LatLng(d4, d1), new LatLng(d5, d2));
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof LatLngBounds))
        return false; 
      paramObject = paramObject;
      if (!this.a.equals(((LatLngBounds)paramObject).a) || !this.b.equals(((LatLngBounds)paramObject).b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a, this.b });
  }
  
  public String toString() {
    return csg.a(this).a("southwest", this.a).a("northeast", this.b).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efo.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\LatLngBounds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */