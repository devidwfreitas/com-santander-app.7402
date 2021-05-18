package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import efu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions extends zza {
  public static final Parcelable.Creator<PolygonOptions> CREATOR = (Parcelable.Creator<PolygonOptions>)new efu();
  
  private final List<LatLng> a = new ArrayList<LatLng>();
  
  private final List<List<LatLng>> b = new ArrayList<List<LatLng>>();
  
  private float c = 10.0F;
  
  private int d = -16777216;
  
  private int e = 0;
  
  private float f = 0.0F;
  
  private boolean g = true;
  
  private boolean h = false;
  
  private boolean i = false;
  
  private int j = 0;
  
  @Nullable
  private List<PatternItem> k = null;
  
  public PolygonOptions() {}
  
  public PolygonOptions(List<LatLng> paramList, List<List<LatLng>> paramList1, float paramFloat1, int paramInt1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt3, @Nullable List<PatternItem> paramList2) {
    this.c = paramFloat1;
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramFloat2;
    this.g = paramBoolean1;
    this.h = paramBoolean2;
    this.i = paramBoolean3;
    this.j = paramInt3;
    this.k = paramList2;
  }
  
  public PolygonOptions a(float paramFloat) {
    this.c = paramFloat;
    return this;
  }
  
  public PolygonOptions a(int paramInt) {
    this.d = paramInt;
    return this;
  }
  
  public PolygonOptions a(LatLng paramLatLng) {
    this.a.add(paramLatLng);
    return this;
  }
  
  public PolygonOptions a(Iterable<LatLng> paramIterable) {
    for (LatLng latLng : paramIterable)
      this.a.add(latLng); 
    return this;
  }
  
  public PolygonOptions a(@Nullable List<PatternItem> paramList) {
    this.k = paramList;
    return this;
  }
  
  public PolygonOptions a(boolean paramBoolean) {
    this.g = paramBoolean;
    return this;
  }
  
  public PolygonOptions a(LatLng... paramVarArgs) {
    this.a.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public List a() {
    return this.b;
  }
  
  public PolygonOptions b(float paramFloat) {
    this.f = paramFloat;
    return this;
  }
  
  public PolygonOptions b(int paramInt) {
    this.j = paramInt;
    return this;
  }
  
  public PolygonOptions b(Iterable<LatLng> paramIterable) {
    ArrayList<LatLng> arrayList = new ArrayList();
    Iterator<LatLng> iterator = paramIterable.iterator();
    while (iterator.hasNext())
      arrayList.add(iterator.next()); 
    this.b.add(arrayList);
    return this;
  }
  
  public PolygonOptions b(boolean paramBoolean) {
    this.h = paramBoolean;
    return this;
  }
  
  public List<LatLng> b() {
    return this.a;
  }
  
  public PolygonOptions c(int paramInt) {
    this.e = paramInt;
    return this;
  }
  
  public PolygonOptions c(boolean paramBoolean) {
    this.i = paramBoolean;
    return this;
  }
  
  public List<List<LatLng>> c() {
    return this.b;
  }
  
  public float d() {
    return this.c;
  }
  
  public int e() {
    return this.d;
  }
  
  public int f() {
    return this.j;
  }
  
  @Nullable
  public List<PatternItem> g() {
    return this.k;
  }
  
  public int h() {
    return this.e;
  }
  
  public float i() {
    return this.f;
  }
  
  public boolean j() {
    return this.g;
  }
  
  public boolean k() {
    return this.h;
  }
  
  public boolean l() {
    return this.i;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efu.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\PolygonOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */