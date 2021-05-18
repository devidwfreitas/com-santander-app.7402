package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import djx;

public class zzatd extends zza {
  public static final Parcelable.Creator<zzatd> CREATOR = (Parcelable.Creator<zzatd>)new djx();
  
  public final String a;
  
  public final String b;
  
  public final String c;
  
  public final String d;
  
  public final long e;
  
  public final long f;
  
  public final String g;
  
  public final boolean h;
  
  public final boolean i;
  
  public final long j;
  
  public final String k;
  
  public final long l;
  
  public zzatd(String paramString1, String paramString2, String paramString3, long paramLong1, String paramString4, long paramLong2, long paramLong3, String paramString5, boolean paramBoolean1, boolean paramBoolean2, String paramString6, long paramLong4) {
    csp.a(paramString1);
    this.a = paramString1;
    paramString1 = paramString2;
    if (TextUtils.isEmpty(paramString2))
      paramString1 = null; 
    this.b = paramString1;
    this.c = paramString3;
    this.j = paramLong1;
    this.d = paramString4;
    this.e = paramLong2;
    this.f = paramLong3;
    this.g = paramString5;
    this.h = paramBoolean1;
    this.i = paramBoolean2;
    this.k = paramString6;
    this.l = paramLong4;
  }
  
  public zzatd(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2, String paramString5, boolean paramBoolean1, boolean paramBoolean2, long paramLong3, String paramString6, long paramLong4) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.j = paramLong3;
    this.d = paramString4;
    this.e = paramLong1;
    this.f = paramLong2;
    this.g = paramString5;
    this.h = paramBoolean1;
    this.i = paramBoolean2;
    this.k = paramString6;
    this.l = paramLong4;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    djx.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzatd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */