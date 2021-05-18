package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import due;

public class zza extends zza {
  public static final Parcelable.Creator<zza> CREATOR = (Parcelable.Creator<zza>)new due();
  
  private long a;
  
  private boolean b;
  
  @Nullable
  private WorkSource c;
  
  @Nullable
  private String d;
  
  @Nullable
  private int[] e;
  
  @Nullable
  private boolean f;
  
  @Nullable
  private String g;
  
  private final long h;
  
  public zza(long paramLong1, boolean paramBoolean1, @Nullable WorkSource paramWorkSource, @Nullable String paramString1, @Nullable int[] paramArrayOfint, boolean paramBoolean2, @Nullable String paramString2, long paramLong2) {
    this.a = paramLong1;
    this.b = paramBoolean1;
    this.c = paramWorkSource;
    this.d = paramString1;
    this.e = paramArrayOfint;
    this.f = paramBoolean2;
    this.g = paramString2;
    this.h = paramLong2;
  }
  
  public long a() {
    return this.a;
  }
  
  public boolean b() {
    return this.b;
  }
  
  @Nullable
  public WorkSource c() {
    return this.c;
  }
  
  @Nullable
  public String d() {
    return this.d;
  }
  
  @Nullable
  public int[] e() {
    return this.e;
  }
  
  public boolean f() {
    return this.f;
  }
  
  @Nullable
  public String g() {
    return this.g;
  }
  
  public long h() {
    return this.h;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    due.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\zza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */