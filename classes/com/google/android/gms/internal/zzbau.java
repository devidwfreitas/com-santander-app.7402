package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzad;
import dqm;

public class zzbau extends zza {
  public static final Parcelable.Creator<zzbau> CREATOR = (Parcelable.Creator<zzbau>)new dqm();
  
  public final int a;
  
  final zzad b;
  
  public zzbau(int paramInt, zzad paramzzad) {
    this.a = paramInt;
    this.b = paramzzad;
  }
  
  public zzbau(zzad paramzzad) {
    this(1, paramzzad);
  }
  
  public zzad a() {
    return this.b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dqm.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzbau.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */