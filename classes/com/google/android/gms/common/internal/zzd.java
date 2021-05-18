package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import cta;

public class zzd extends zza {
  public static final Parcelable.Creator<zzd> CREATOR = (Parcelable.Creator<zzd>)new cta();
  
  public final int a;
  
  public final IBinder b;
  
  public final Scope[] c;
  
  public Integer d;
  
  public Integer e;
  
  public zzd(int paramInt, IBinder paramIBinder, Scope[] paramArrayOfScope, Integer paramInteger1, Integer paramInteger2) {
    this.a = paramInt;
    this.b = paramIBinder;
    this.c = paramArrayOfScope;
    this.d = paramInteger1;
    this.e = paramInteger2;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cta.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\zzd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */