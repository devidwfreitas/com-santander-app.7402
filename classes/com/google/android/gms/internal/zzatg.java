package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import djz;

public final class zzatg extends zza {
  public static final Parcelable.Creator<zzatg> CREATOR = (Parcelable.Creator<zzatg>)new djz();
  
  public final int a;
  
  public String b;
  
  public String c;
  
  public zzauq d;
  
  public long e;
  
  public boolean f;
  
  public String g;
  
  public zzatq h;
  
  public long i;
  
  public zzatq j;
  
  public long k;
  
  public zzatq l;
  
  public zzatg(int paramInt, String paramString1, String paramString2, zzauq paramzzauq, long paramLong1, boolean paramBoolean, String paramString3, zzatq paramzzatq1, long paramLong2, zzatq paramzzatq2, long paramLong3, zzatq paramzzatq3) {
    this.a = paramInt;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramzzauq;
    this.e = paramLong1;
    this.f = paramBoolean;
    this.g = paramString3;
    this.h = paramzzatq1;
    this.i = paramLong2;
    this.j = paramzzatq2;
    this.k = paramLong3;
    this.l = paramzzatq3;
  }
  
  public zzatg(zzatg paramzzatg) {
    this.a = 1;
    csp.a(paramzzatg);
    this.b = paramzzatg.b;
    this.c = paramzzatg.c;
    this.d = paramzzatg.d;
    this.e = paramzzatg.e;
    this.f = paramzzatg.f;
    this.g = paramzzatg.g;
    this.h = paramzzatg.h;
    this.i = paramzzatg.i;
    this.j = paramzzatg.j;
    this.k = paramzzatg.k;
    this.l = paramzzatg.l;
  }
  
  public zzatg(String paramString1, String paramString2, zzauq paramzzauq, long paramLong1, boolean paramBoolean, String paramString3, zzatq paramzzatq1, long paramLong2, zzatq paramzzatq2, long paramLong3, zzatq paramzzatq3) {
    this.a = 1;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramzzauq;
    this.e = paramLong1;
    this.f = paramBoolean;
    this.g = paramString3;
    this.h = paramzzatq1;
    this.i = paramLong2;
    this.j = paramzzatq2;
    this.k = paramLong3;
    this.l = paramzzatq3;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    djz.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzatg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */