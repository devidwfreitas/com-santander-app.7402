package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import dus;

public final class LocationRequest extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<LocationRequest> CREATOR = (Parcelable.Creator<LocationRequest>)new dus();
  
  public static final int a = 100;
  
  public static final int b = 102;
  
  public static final int c = 104;
  
  public static final int d = 105;
  
  public int e = 102;
  
  public long f = 3600000L;
  
  public long g = 600000L;
  
  public boolean h = false;
  
  public long i = Long.MAX_VALUE;
  
  public int j = Integer.MAX_VALUE;
  
  public float k = 0.0F;
  
  public long l = 0L;
  
  public LocationRequest() {}
  
  public LocationRequest(int paramInt1, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt2, float paramFloat, long paramLong4) {}
  
  public static LocationRequest a() {
    return new LocationRequest();
  }
  
  private static void b(float paramFloat) {
    if (paramFloat < 0.0F)
      throw new IllegalArgumentException((new StringBuilder(37)).append("invalid displacement: ").append(paramFloat).toString()); 
  }
  
  public static String c(int paramInt) {
    switch (paramInt) {
      default:
        return "???";
      case 100:
        return "PRIORITY_HIGH_ACCURACY";
      case 102:
        return "PRIORITY_BALANCED_POWER_ACCURACY";
      case 104:
        return "PRIORITY_LOW_POWER";
      case 105:
        break;
    } 
    return "PRIORITY_NO_POWER";
  }
  
  private static void d(int paramInt) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException((new StringBuilder(28)).append("invalid quality: ").append(paramInt).toString());
      case 100:
      case 102:
      case 104:
      case 105:
        break;
    } 
  }
  
  private static void f(long paramLong) {
    if (paramLong < 0L)
      throw new IllegalArgumentException((new StringBuilder(38)).append("invalid interval: ").append(paramLong).toString()); 
  }
  
  public LocationRequest a(float paramFloat) {
    b(paramFloat);
    this.k = paramFloat;
    return this;
  }
  
  public LocationRequest a(int paramInt) {
    d(paramInt);
    this.e = paramInt;
    return this;
  }
  
  public LocationRequest a(long paramLong) {
    f(paramLong);
    this.f = paramLong;
    if (!this.h)
      this.g = (long)(this.f / 6.0D); 
    return this;
  }
  
  public int b() {
    return this.e;
  }
  
  public LocationRequest b(int paramInt) {
    if (paramInt <= 0)
      throw new IllegalArgumentException((new StringBuilder(31)).append("invalid numUpdates: ").append(paramInt).toString()); 
    this.j = paramInt;
    return this;
  }
  
  public LocationRequest b(long paramLong) {
    f(paramLong);
    this.l = paramLong;
    return this;
  }
  
  public long c() {
    return this.f;
  }
  
  public LocationRequest c(long paramLong) {
    f(paramLong);
    this.h = true;
    this.g = paramLong;
    return this;
  }
  
  public long d() {
    long l2 = this.l;
    long l1 = l2;
    if (l2 < this.f)
      l1 = this.f; 
    return l1;
  }
  
  public LocationRequest d(long paramLong) {
    long l = SystemClock.elapsedRealtime();
    if (paramLong > Long.MAX_VALUE - l) {
      this.i = Long.MAX_VALUE;
    } else {
      this.i = l + paramLong;
    } 
    if (this.i < 0L)
      this.i = 0L; 
    return this;
  }
  
  public long e() {
    return this.g;
  }
  
  public LocationRequest e(long paramLong) {
    this.i = paramLong;
    if (this.i < 0L)
      this.i = 0L; 
    return this;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof LocationRequest))
        return false; 
      paramObject = paramObject;
      if (this.e != ((LocationRequest)paramObject).e || this.f != ((LocationRequest)paramObject).f || this.g != ((LocationRequest)paramObject).g || this.h != ((LocationRequest)paramObject).h || this.i != ((LocationRequest)paramObject).i || this.j != ((LocationRequest)paramObject).j || this.k != ((LocationRequest)paramObject).k || d() != paramObject.d())
        return false; 
    } 
    return true;
  }
  
  public long f() {
    return this.i;
  }
  
  public int g() {
    return this.j;
  }
  
  public float h() {
    return this.k;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.e), Long.valueOf(this.f), Float.valueOf(this.k), Long.valueOf(this.l) });
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Request[").append(c(this.e));
    if (this.e != 105) {
      stringBuilder.append(" requested=");
      stringBuilder.append(this.f).append("ms");
    } 
    stringBuilder.append(" fastest=");
    stringBuilder.append(this.g).append("ms");
    if (this.l > this.f) {
      stringBuilder.append(" maxWait=");
      stringBuilder.append(this.l).append("ms");
    } 
    if (this.k > 0.0F) {
      stringBuilder.append(" smallestDisplacement=");
      stringBuilder.append(this.k).append("m");
    } 
    if (this.i != Long.MAX_VALUE) {
      long l1 = this.i;
      long l2 = SystemClock.elapsedRealtime();
      stringBuilder.append(" expireIn=");
      stringBuilder.append(l1 - l2).append("ms");
    } 
    if (this.j != Integer.MAX_VALUE)
      stringBuilder.append(" num=").append(this.j); 
    stringBuilder.append(']');
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dus.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\LocationRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */