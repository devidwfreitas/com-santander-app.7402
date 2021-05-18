package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import dfy;

public final class zzacp$zza extends zza {
  public static final Parcelable.Creator<zzacp$zza> CREATOR = (Parcelable.Creator<zzacp$zza>)new dfy();
  
  public final int a;
  
  public final String b;
  
  public final int c;
  
  public zzacp$zza(int paramInt1, String paramString, int paramInt2) {
    this.a = paramInt1;
    this.b = paramString;
    this.c = paramInt2;
  }
  
  zzacp$zza(String paramString, int paramInt) {
    this.a = 1;
    this.b = paramString;
    this.c = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dfy.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacp$zza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */