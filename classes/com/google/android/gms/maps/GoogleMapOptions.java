package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import cnu;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import dzr;
import egd;

public final class GoogleMapOptions extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<GoogleMapOptions> CREATOR = (Parcelable.Creator<GoogleMapOptions>)new egd();
  
  private Boolean a;
  
  private Boolean b;
  
  private int c = -1;
  
  private CameraPosition d;
  
  private Boolean e;
  
  private Boolean f;
  
  private Boolean g;
  
  private Boolean h;
  
  private Boolean i;
  
  private Boolean j;
  
  private Boolean k;
  
  private Boolean l;
  
  private Boolean m;
  
  private Float n = null;
  
  private Float o = null;
  
  private LatLngBounds p = null;
  
  public GoogleMapOptions() {}
  
  public GoogleMapOptions(byte paramByte1, byte paramByte2, int paramInt, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10, byte paramByte11, Float paramFloat1, Float paramFloat2, LatLngBounds paramLatLngBounds) {
    this.a = dzr.a(paramByte1);
    this.b = dzr.a(paramByte2);
    this.c = paramInt;
    this.d = paramCameraPosition;
    this.e = dzr.a(paramByte3);
    this.f = dzr.a(paramByte4);
    this.g = dzr.a(paramByte5);
    this.h = dzr.a(paramByte6);
    this.i = dzr.a(paramByte7);
    this.j = dzr.a(paramByte8);
    this.k = dzr.a(paramByte9);
    this.l = dzr.a(paramByte10);
    this.m = dzr.a(paramByte11);
    this.n = paramFloat1;
    this.o = paramFloat2;
    this.p = paramLatLngBounds;
  }
  
  public static GoogleMapOptions a(Context paramContext, AttributeSet paramAttributeSet) {
    if (paramAttributeSet == null)
      return null; 
    TypedArray typedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, cnu.MapAttrs);
    GoogleMapOptions googleMapOptions = new GoogleMapOptions();
    if (typedArray.hasValue(cnu.MapAttrs_mapType))
      googleMapOptions.a(typedArray.getInt(cnu.MapAttrs_mapType, -1)); 
    if (typedArray.hasValue(cnu.MapAttrs_zOrderOnTop))
      googleMapOptions.a(typedArray.getBoolean(cnu.MapAttrs_zOrderOnTop, false)); 
    if (typedArray.hasValue(cnu.MapAttrs_useViewLifecycle))
      googleMapOptions.b(typedArray.getBoolean(cnu.MapAttrs_useViewLifecycle, false)); 
    if (typedArray.hasValue(cnu.MapAttrs_uiCompass))
      googleMapOptions.d(typedArray.getBoolean(cnu.MapAttrs_uiCompass, true)); 
    if (typedArray.hasValue(cnu.MapAttrs_uiRotateGestures))
      googleMapOptions.h(typedArray.getBoolean(cnu.MapAttrs_uiRotateGestures, true)); 
    if (typedArray.hasValue(cnu.MapAttrs_uiScrollGestures))
      googleMapOptions.e(typedArray.getBoolean(cnu.MapAttrs_uiScrollGestures, true)); 
    if (typedArray.hasValue(cnu.MapAttrs_uiTiltGestures))
      googleMapOptions.g(typedArray.getBoolean(cnu.MapAttrs_uiTiltGestures, true)); 
    if (typedArray.hasValue(cnu.MapAttrs_uiZoomGestures))
      googleMapOptions.f(typedArray.getBoolean(cnu.MapAttrs_uiZoomGestures, true)); 
    if (typedArray.hasValue(cnu.MapAttrs_uiZoomControls))
      googleMapOptions.c(typedArray.getBoolean(cnu.MapAttrs_uiZoomControls, true)); 
    if (typedArray.hasValue(cnu.MapAttrs_liteMode))
      googleMapOptions.i(typedArray.getBoolean(cnu.MapAttrs_liteMode, false)); 
    if (typedArray.hasValue(cnu.MapAttrs_uiMapToolbar))
      googleMapOptions.j(typedArray.getBoolean(cnu.MapAttrs_uiMapToolbar, true)); 
    if (typedArray.hasValue(cnu.MapAttrs_ambientEnabled))
      googleMapOptions.k(typedArray.getBoolean(cnu.MapAttrs_ambientEnabled, false)); 
    if (typedArray.hasValue(cnu.MapAttrs_cameraMinZoomPreference))
      googleMapOptions.a(typedArray.getFloat(cnu.MapAttrs_cameraMinZoomPreference, Float.NEGATIVE_INFINITY)); 
    if (typedArray.hasValue(cnu.MapAttrs_cameraMinZoomPreference))
      googleMapOptions.b(typedArray.getFloat(cnu.MapAttrs_cameraMaxZoomPreference, Float.POSITIVE_INFINITY)); 
    googleMapOptions.a(LatLngBounds.a(paramContext, paramAttributeSet));
    googleMapOptions.a(CameraPosition.a(paramContext, paramAttributeSet));
    typedArray.recycle();
    return googleMapOptions;
  }
  
  public LatLngBounds A() {
    return this.p;
  }
  
  public byte a() {
    return dzr.a(this.a);
  }
  
  public GoogleMapOptions a(float paramFloat) {
    this.n = Float.valueOf(paramFloat);
    return this;
  }
  
  public GoogleMapOptions a(int paramInt) {
    this.c = paramInt;
    return this;
  }
  
  public GoogleMapOptions a(CameraPosition paramCameraPosition) {
    this.d = paramCameraPosition;
    return this;
  }
  
  public GoogleMapOptions a(LatLngBounds paramLatLngBounds) {
    this.p = paramLatLngBounds;
    return this;
  }
  
  public GoogleMapOptions a(boolean paramBoolean) {
    this.a = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte b() {
    return dzr.a(this.b);
  }
  
  public GoogleMapOptions b(float paramFloat) {
    this.o = Float.valueOf(paramFloat);
    return this;
  }
  
  public GoogleMapOptions b(boolean paramBoolean) {
    this.b = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte c() {
    return dzr.a(this.e);
  }
  
  public GoogleMapOptions c(boolean paramBoolean) {
    this.e = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte d() {
    return dzr.a(this.f);
  }
  
  public GoogleMapOptions d(boolean paramBoolean) {
    this.f = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte e() {
    return dzr.a(this.g);
  }
  
  public GoogleMapOptions e(boolean paramBoolean) {
    this.g = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte f() {
    return dzr.a(this.h);
  }
  
  public GoogleMapOptions f(boolean paramBoolean) {
    this.h = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte g() {
    return dzr.a(this.i);
  }
  
  public GoogleMapOptions g(boolean paramBoolean) {
    this.i = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte h() {
    return dzr.a(this.j);
  }
  
  public GoogleMapOptions h(boolean paramBoolean) {
    this.j = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte i() {
    return dzr.a(this.k);
  }
  
  public GoogleMapOptions i(boolean paramBoolean) {
    this.k = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte j() {
    return dzr.a(this.l);
  }
  
  public GoogleMapOptions j(boolean paramBoolean) {
    this.l = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte k() {
    return dzr.a(this.m);
  }
  
  public GoogleMapOptions k(boolean paramBoolean) {
    this.m = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public Boolean l() {
    return this.a;
  }
  
  public Boolean m() {
    return this.b;
  }
  
  public int n() {
    return this.c;
  }
  
  public CameraPosition o() {
    return this.d;
  }
  
  public Boolean p() {
    return this.e;
  }
  
  public Boolean q() {
    return this.f;
  }
  
  public Boolean r() {
    return this.g;
  }
  
  public Boolean s() {
    return this.h;
  }
  
  public Boolean t() {
    return this.i;
  }
  
  public Boolean u() {
    return this.j;
  }
  
  public Boolean v() {
    return this.k;
  }
  
  public Boolean w() {
    return this.l;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    egd.a(this, paramParcel, paramInt);
  }
  
  public Boolean x() {
    return this.m;
  }
  
  public Float y() {
    return this.n;
  }
  
  public Float z() {
    return this.o;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\GoogleMapOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */