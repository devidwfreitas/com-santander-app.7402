package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import css;

public class zzah extends zza {
  public static final Parcelable.Creator<zzah> CREATOR = (Parcelable.Creator<zzah>)new css();
  
  public final int a;
  
  private final int b;
  
  private final int c;
  
  @Deprecated
  private final Scope[] d;
  
  public zzah(int paramInt1, int paramInt2, int paramInt3, Scope[] paramArrayOfScope) {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramArrayOfScope;
  }
  
  public zzah(int paramInt1, int paramInt2, Scope[] paramArrayOfScope) {
    this(1, paramInt1, paramInt2, null);
  }
  
  public int a() {
    return this.b;
  }
  
  public int b() {
    return this.c;
  }
  
  @Deprecated
  public Scope[] c() {
    return this.d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    css.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\zzah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */