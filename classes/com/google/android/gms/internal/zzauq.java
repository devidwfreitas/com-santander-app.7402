package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import dos;
import dot;

public class zzauq extends zza {
  public static final Parcelable.Creator<zzauq> CREATOR = (Parcelable.Creator<zzauq>)new dos();
  
  public final int a;
  
  public final String b;
  
  public final long c;
  
  public final Long d;
  
  public final Float e;
  
  public final String f;
  
  public final String g;
  
  public final Double h;
  
  public zzauq(int paramInt, String paramString1, long paramLong, Long paramLong1, Float paramFloat, String paramString2, String paramString3, Double paramDouble) {
    this.a = paramInt;
    this.b = paramString1;
    this.c = paramLong;
    this.d = paramLong1;
    this.e = null;
    if (paramInt == 1) {
      Double double_;
      paramString1 = str;
      if (paramFloat != null)
        double_ = Double.valueOf(paramFloat.doubleValue()); 
      this.h = double_;
    } else {
      this.h = paramDouble;
    } 
    this.f = paramString2;
    this.g = paramString3;
  }
  
  public zzauq(dot paramdot) {
    this(paramdot.c, paramdot.d, paramdot.e, paramdot.b);
  }
  
  public zzauq(String paramString1, long paramLong, Object paramObject, String paramString2) {
    csp.a(paramString1);
    this.a = 2;
    this.b = paramString1;
    this.c = paramLong;
    this.g = paramString2;
    if (paramObject == null) {
      this.d = null;
      this.e = null;
      this.h = null;
      this.f = null;
      return;
    } 
    if (paramObject instanceof Long) {
      this.d = (Long)paramObject;
      this.e = null;
      this.h = null;
      this.f = null;
      return;
    } 
    if (paramObject instanceof String) {
      this.d = null;
      this.e = null;
      this.h = null;
      this.f = (String)paramObject;
      return;
    } 
    if (paramObject instanceof Double) {
      this.d = null;
      this.e = null;
      this.h = (Double)paramObject;
      this.f = null;
      return;
    } 
    throw new IllegalArgumentException("User attribute given of un-supported type");
  }
  
  public Object a() {
    return (this.d != null) ? this.d : ((this.h != null) ? this.h : ((this.f != null) ? this.f : null));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dos.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzauq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */