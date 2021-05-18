package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import efv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class PolylineOptions extends zza {
  public static final Parcelable.Creator<PolylineOptions> CREATOR = (Parcelable.Creator<PolylineOptions>)new efv();
  
  private final List<LatLng> a = new ArrayList<LatLng>();
  
  private float b = 10.0F;
  
  private int c = -16777216;
  
  private float d = 0.0F;
  
  private boolean e = true;
  
  private boolean f = false;
  
  private boolean g = false;
  
  @NonNull
  private Cap h = new ButtCap();
  
  @NonNull
  private Cap i = new ButtCap();
  
  private int j = 0;
  
  @Nullable
  private List<PatternItem> k = null;
  
  public PolylineOptions() {}
  
  public PolylineOptions(List<LatLng> paramList, float paramFloat1, int paramInt1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, @Nullable Cap paramCap1, @Nullable Cap paramCap2, int paramInt2, @Nullable List<PatternItem> paramList1) {
    this.b = paramFloat1;
    this.c = paramInt1;
    this.d = paramFloat2;
    this.e = paramBoolean1;
    this.f = paramBoolean2;
    this.g = paramBoolean3;
    if (paramCap1 != null)
      this.h = paramCap1; 
    if (paramCap2 != null)
      this.i = paramCap2; 
    this.j = paramInt2;
    this.k = paramList1;
  }
  
  public PolylineOptions a(float paramFloat) {
    this.b = paramFloat;
    return this;
  }
  
  public PolylineOptions a(int paramInt) {
    this.c = paramInt;
    return this;
  }
  
  public PolylineOptions a(@NonNull Cap paramCap) {
    this.h = (Cap)csp.a(paramCap, "startCap must not be null");
    return this;
  }
  
  public PolylineOptions a(LatLng paramLatLng) {
    this.a.add(paramLatLng);
    return this;
  }
  
  public PolylineOptions a(Iterable<LatLng> paramIterable) {
    for (LatLng latLng : paramIterable)
      this.a.add(latLng); 
    return this;
  }
  
  public PolylineOptions a(@Nullable List<PatternItem> paramList) {
    this.k = paramList;
    return this;
  }
  
  public PolylineOptions a(boolean paramBoolean) {
    this.e = paramBoolean;
    return this;
  }
  
  public PolylineOptions a(LatLng... paramVarArgs) {
    this.a.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public List<LatLng> a() {
    return this.a;
  }
  
  public float b() {
    return this.b;
  }
  
  public PolylineOptions b(float paramFloat) {
    this.d = paramFloat;
    return this;
  }
  
  public PolylineOptions b(int paramInt) {
    this.j = paramInt;
    return this;
  }
  
  public PolylineOptions b(@NonNull Cap paramCap) {
    this.i = (Cap)csp.a(paramCap, "endCap must not be null");
    return this;
  }
  
  public PolylineOptions b(boolean paramBoolean) {
    this.f = paramBoolean;
    return this;
  }
  
  public int c() {
    return this.c;
  }
  
  public PolylineOptions c(boolean paramBoolean) {
    this.g = paramBoolean;
    return this;
  }
  
  @NonNull
  public Cap d() {
    return this.h;
  }
  
  @NonNull
  public Cap e() {
    return this.i;
  }
  
  public int f() {
    return this.j;
  }
  
  @Nullable
  public List<PatternItem> g() {
    return this.k;
  }
  
  public float h() {
    return this.d;
  }
  
  public boolean i() {
    return this.e;
  }
  
  public boolean j() {
    return this.f;
  }
  
  public boolean k() {
    return this.g;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efv.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\PolylineOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */