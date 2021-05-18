package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cwy;
import edm;
import efr;

public final class MarkerOptions extends zza {
  public static final Parcelable.Creator<MarkerOptions> CREATOR = (Parcelable.Creator<MarkerOptions>)new efr();
  
  private LatLng a;
  
  private String b;
  
  private String c;
  
  private edm d;
  
  private float e = 0.5F;
  
  private float f = 1.0F;
  
  private boolean g;
  
  private boolean h = true;
  
  private boolean i = false;
  
  private float j = 0.0F;
  
  private float k = 0.5F;
  
  private float l = 0.0F;
  
  private float m = 1.0F;
  
  private float n;
  
  public MarkerOptions() {}
  
  public MarkerOptions(LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7) {
    this.a = paramLatLng;
    this.b = paramString1;
    this.c = paramString2;
    if (paramIBinder == null) {
      this.d = null;
    } else {
      this.d = new edm(cwy.a(paramIBinder));
    } 
    this.e = paramFloat1;
    this.f = paramFloat2;
    this.g = paramBoolean1;
    this.h = paramBoolean2;
    this.i = paramBoolean3;
    this.j = paramFloat3;
    this.k = paramFloat4;
    this.l = paramFloat5;
    this.m = paramFloat6;
    this.n = paramFloat7;
  }
  
  public IBinder a() {
    return (this.d == null) ? null : this.d.a().asBinder();
  }
  
  public MarkerOptions a(float paramFloat) {
    this.n = paramFloat;
    return this;
  }
  
  public MarkerOptions a(float paramFloat1, float paramFloat2) {
    this.e = paramFloat1;
    this.f = paramFloat2;
    return this;
  }
  
  public MarkerOptions a(@NonNull LatLng paramLatLng) {
    if (paramLatLng == null)
      throw new IllegalArgumentException("latlng cannot be null - a position is required."); 
    this.a = paramLatLng;
    return this;
  }
  
  public MarkerOptions a(@Nullable edm paramedm) {
    this.d = paramedm;
    return this;
  }
  
  public MarkerOptions a(@Nullable String paramString) {
    this.b = paramString;
    return this;
  }
  
  public MarkerOptions a(boolean paramBoolean) {
    this.g = paramBoolean;
    return this;
  }
  
  public LatLng b() {
    return this.a;
  }
  
  public MarkerOptions b(float paramFloat) {
    this.j = paramFloat;
    return this;
  }
  
  public MarkerOptions b(float paramFloat1, float paramFloat2) {
    this.k = paramFloat1;
    this.l = paramFloat2;
    return this;
  }
  
  public MarkerOptions b(@Nullable String paramString) {
    this.c = paramString;
    return this;
  }
  
  public MarkerOptions b(boolean paramBoolean) {
    this.h = paramBoolean;
    return this;
  }
  
  public MarkerOptions c(float paramFloat) {
    this.m = paramFloat;
    return this;
  }
  
  public MarkerOptions c(boolean paramBoolean) {
    this.i = paramBoolean;
    return this;
  }
  
  public String c() {
    return this.b;
  }
  
  public String d() {
    return this.c;
  }
  
  public edm e() {
    return this.d;
  }
  
  public float f() {
    return this.e;
  }
  
  public float g() {
    return this.f;
  }
  
  public boolean h() {
    return this.g;
  }
  
  public boolean i() {
    return this.h;
  }
  
  public boolean j() {
    return this.i;
  }
  
  public float k() {
    return this.j;
  }
  
  public float l() {
    return this.k;
  }
  
  public float m() {
    return this.l;
  }
  
  public float n() {
    return this.m;
  }
  
  public float o() {
    return this.n;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efr.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\MarkerOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */