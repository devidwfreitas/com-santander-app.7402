package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import dgb;

public class zzacw$zzb extends zza {
  public static final Parcelable.Creator<zzacw$zzb> CREATOR = (Parcelable.Creator<zzacw$zzb>)new dgb();
  
  public final int a;
  
  public final String b;
  
  public final zzacs$zza<?, ?> c;
  
  public zzacw$zzb(int paramInt, String paramString, zzacs$zza<?, ?> paramzzacs$zza) {
    this.a = paramInt;
    this.b = paramString;
    this.c = paramzzacs$zza;
  }
  
  zzacw$zzb(String paramString, zzacs$zza<?, ?> paramzzacs$zza) {
    this.a = 1;
    this.b = paramString;
    this.c = paramzzacs$zza;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dgb.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacw$zzb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */