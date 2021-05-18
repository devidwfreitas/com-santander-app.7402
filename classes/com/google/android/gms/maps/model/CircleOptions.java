package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import efm;
import java.util.List;

public final class CircleOptions extends zza {
  public static final Parcelable.Creator<CircleOptions> CREATOR = (Parcelable.Creator<CircleOptions>)new efm();
  
  private LatLng a = null;
  
  private double b = 0.0D;
  
  private float c = 10.0F;
  
  private int d = -16777216;
  
  private int e = 0;
  
  private float f = 0.0F;
  
  private boolean g = true;
  
  private boolean h = false;
  
  @Nullable
  private List<PatternItem> i = null;
  
  public CircleOptions() {}
  
  public CircleOptions(LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, @Nullable List<PatternItem> paramList) {
    this.a = paramLatLng;
    this.b = paramDouble;
    this.c = paramFloat1;
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramFloat2;
    this.g = paramBoolean1;
    this.h = paramBoolean2;
    this.i = paramList;
  }
  
  public CircleOptions a(double paramDouble) {
    this.b = paramDouble;
    return this;
  }
  
  public CircleOptions a(float paramFloat) {
    this.c = paramFloat;
    return this;
  }
  
  public CircleOptions a(int paramInt) {
    this.d = paramInt;
    return this;
  }
  
  public CircleOptions a(LatLng paramLatLng) {
    this.a = paramLatLng;
    return this;
  }
  
  public CircleOptions a(@Nullable List<PatternItem> paramList) {
    this.i = paramList;
    return this;
  }
  
  public CircleOptions a(boolean paramBoolean) {
    this.g = paramBoolean;
    return this;
  }
  
  public LatLng a() {
    return this.a;
  }
  
  public double b() {
    return this.b;
  }
  
  public CircleOptions b(float paramFloat) {
    this.f = paramFloat;
    return this;
  }
  
  public CircleOptions b(int paramInt) {
    this.e = paramInt;
    return this;
  }
  
  public CircleOptions b(boolean paramBoolean) {
    this.h = paramBoolean;
    return this;
  }
  
  public float c() {
    return this.c;
  }
  
  public int d() {
    return this.d;
  }
  
  @Nullable
  public List<PatternItem> e() {
    return this.i;
  }
  
  public int f() {
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
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efm.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\CircleOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */