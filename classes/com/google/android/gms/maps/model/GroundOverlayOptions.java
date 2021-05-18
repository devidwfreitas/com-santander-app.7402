package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import cwy;
import edm;
import efn;

public final class GroundOverlayOptions extends zza {
  public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = (Parcelable.Creator<GroundOverlayOptions>)new efn();
  
  public static final float a = -1.0F;
  
  @NonNull
  private edm b;
  
  private LatLng c;
  
  private float d;
  
  private float e;
  
  private LatLngBounds f;
  
  private float g;
  
  private float h;
  
  private boolean i = true;
  
  private float j = 0.0F;
  
  private float k = 0.5F;
  
  private float l = 0.5F;
  
  private boolean m = false;
  
  public GroundOverlayOptions() {}
  
  public GroundOverlayOptions(IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean1, float paramFloat5, float paramFloat6, float paramFloat7, boolean paramBoolean2) {
    this.b = new edm(cwy.a(paramIBinder));
    this.c = paramLatLng;
    this.d = paramFloat1;
    this.e = paramFloat2;
    this.f = paramLatLngBounds;
    this.g = paramFloat3;
    this.h = paramFloat4;
    this.i = paramBoolean1;
    this.j = paramFloat5;
    this.k = paramFloat6;
    this.l = paramFloat7;
    this.m = paramBoolean2;
  }
  
  private GroundOverlayOptions b(LatLng paramLatLng, float paramFloat1, float paramFloat2) {
    this.c = paramLatLng;
    this.d = paramFloat1;
    this.e = paramFloat2;
    return this;
  }
  
  public IBinder a() {
    return this.b.a().asBinder();
  }
  
  public GroundOverlayOptions a(float paramFloat) {
    this.g = (paramFloat % 360.0F + 360.0F) % 360.0F;
    return this;
  }
  
  public GroundOverlayOptions a(float paramFloat1, float paramFloat2) {
    this.k = paramFloat1;
    this.l = paramFloat2;
    return this;
  }
  
  public GroundOverlayOptions a(LatLng paramLatLng, float paramFloat) {
    boolean bool2 = true;
    if (this.f == null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "Position has already been set using positionFromBounds");
    if (paramLatLng != null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "Location must be specified");
    if (paramFloat >= 0.0F) {
      bool1 = bool2;
      csp.b(bool1, "Width must be non-negative");
      return b(paramLatLng, paramFloat, -1.0F);
    } 
    boolean bool1 = false;
    csp.b(bool1, "Width must be non-negative");
    return b(paramLatLng, paramFloat, -1.0F);
  }
  
  public GroundOverlayOptions a(LatLng paramLatLng, float paramFloat1, float paramFloat2) {
    boolean bool2 = true;
    if (this.f == null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "Position has already been set using positionFromBounds");
    if (paramLatLng != null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "Location must be specified");
    if (paramFloat1 >= 0.0F) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "Width must be non-negative");
    if (paramFloat2 >= 0.0F) {
      bool1 = bool2;
      csp.b(bool1, "Height must be non-negative");
      return b(paramLatLng, paramFloat1, paramFloat2);
    } 
    boolean bool1 = false;
    csp.b(bool1, "Height must be non-negative");
    return b(paramLatLng, paramFloat1, paramFloat2);
  }
  
  public GroundOverlayOptions a(LatLngBounds paramLatLngBounds) {
    if (this.c == null) {
      boolean bool1 = true;
      String str1 = String.valueOf(this.c);
      csp.a(bool1, (new StringBuilder(String.valueOf(str1).length() + 46)).append("Position has already been set using position: ").append(str1).toString());
      this.f = paramLatLngBounds;
      return this;
    } 
    boolean bool = false;
    String str = String.valueOf(this.c);
    csp.a(bool, (new StringBuilder(String.valueOf(str).length() + 46)).append("Position has already been set using position: ").append(str).toString());
    this.f = paramLatLngBounds;
    return this;
  }
  
  public GroundOverlayOptions a(@NonNull edm paramedm) {
    csp.a(paramedm, "imageDescriptor must not be null");
    this.b = paramedm;
    return this;
  }
  
  public GroundOverlayOptions a(boolean paramBoolean) {
    this.i = paramBoolean;
    return this;
  }
  
  public GroundOverlayOptions b(float paramFloat) {
    this.h = paramFloat;
    return this;
  }
  
  public GroundOverlayOptions b(boolean paramBoolean) {
    this.m = paramBoolean;
    return this;
  }
  
  public edm b() {
    return this.b;
  }
  
  public GroundOverlayOptions c(float paramFloat) {
    if (paramFloat >= 0.0F && paramFloat <= 1.0F) {
      boolean bool1 = true;
      csp.b(bool1, "Transparency must be in the range [0..1]");
      this.j = paramFloat;
      return this;
    } 
    boolean bool = false;
    csp.b(bool, "Transparency must be in the range [0..1]");
    this.j = paramFloat;
    return this;
  }
  
  public LatLng c() {
    return this.c;
  }
  
  public float d() {
    return this.d;
  }
  
  public float e() {
    return this.e;
  }
  
  public LatLngBounds f() {
    return this.f;
  }
  
  public float g() {
    return this.g;
  }
  
  public float h() {
    return this.h;
  }
  
  public float i() {
    return this.j;
  }
  
  public float j() {
    return this.k;
  }
  
  public float k() {
    return this.l;
  }
  
  public boolean l() {
    return this.i;
  }
  
  public boolean m() {
    return this.m;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efn.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\GroundOverlayOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */