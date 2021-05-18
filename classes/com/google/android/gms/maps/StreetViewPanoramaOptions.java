package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import dzr;
import ege;

public final class StreetViewPanoramaOptions extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = (Parcelable.Creator<StreetViewPanoramaOptions>)new ege();
  
  private StreetViewPanoramaCamera a;
  
  private String b;
  
  private LatLng c;
  
  private Integer d;
  
  private Boolean e = Boolean.valueOf(true);
  
  private Boolean f = Boolean.valueOf(true);
  
  private Boolean g = Boolean.valueOf(true);
  
  private Boolean h = Boolean.valueOf(true);
  
  private Boolean i;
  
  public StreetViewPanoramaOptions() {}
  
  public StreetViewPanoramaOptions(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5) {
    this.a = paramStreetViewPanoramaCamera;
    this.c = paramLatLng;
    this.d = paramInteger;
    this.b = paramString;
    this.e = dzr.a(paramByte1);
    this.f = dzr.a(paramByte2);
    this.g = dzr.a(paramByte3);
    this.h = dzr.a(paramByte4);
    this.i = dzr.a(paramByte5);
  }
  
  public byte a() {
    return dzr.a(this.e);
  }
  
  public StreetViewPanoramaOptions a(LatLng paramLatLng) {
    this.c = paramLatLng;
    return this;
  }
  
  public StreetViewPanoramaOptions a(LatLng paramLatLng, Integer paramInteger) {
    this.c = paramLatLng;
    this.d = paramInteger;
    return this;
  }
  
  public StreetViewPanoramaOptions a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera) {
    this.a = paramStreetViewPanoramaCamera;
    return this;
  }
  
  public StreetViewPanoramaOptions a(String paramString) {
    this.b = paramString;
    return this;
  }
  
  public StreetViewPanoramaOptions a(boolean paramBoolean) {
    this.e = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte b() {
    return dzr.a(this.f);
  }
  
  public StreetViewPanoramaOptions b(boolean paramBoolean) {
    this.f = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte c() {
    return dzr.a(this.g);
  }
  
  public StreetViewPanoramaOptions c(boolean paramBoolean) {
    this.g = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte d() {
    return dzr.a(this.h);
  }
  
  public StreetViewPanoramaOptions d(boolean paramBoolean) {
    this.h = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte e() {
    return dzr.a(this.i);
  }
  
  public StreetViewPanoramaOptions e(boolean paramBoolean) {
    this.i = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public StreetViewPanoramaCamera f() {
    return this.a;
  }
  
  public LatLng g() {
    return this.c;
  }
  
  public Integer h() {
    return this.d;
  }
  
  public String i() {
    return this.b;
  }
  
  public Boolean j() {
    return this.e;
  }
  
  public Boolean k() {
    return this.f;
  }
  
  public Boolean l() {
    return this.g;
  }
  
  public Boolean m() {
    return this.h;
  }
  
  public Boolean n() {
    return this.i;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    ege.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\StreetViewPanoramaOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */