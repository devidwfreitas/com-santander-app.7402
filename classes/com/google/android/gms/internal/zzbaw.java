package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaf;
import dqn;

public class zzbaw extends zza {
  public static final Parcelable.Creator<zzbaw> CREATOR = (Parcelable.Creator<zzbaw>)new dqn();
  
  public final int a;
  
  private final ConnectionResult b;
  
  private final zzaf c;
  
  public zzbaw(int paramInt) {
    this(new ConnectionResult(paramInt, null), null);
  }
  
  public zzbaw(int paramInt, ConnectionResult paramConnectionResult, zzaf paramzzaf) {
    this.a = paramInt;
    this.b = paramConnectionResult;
    this.c = paramzzaf;
  }
  
  public zzbaw(ConnectionResult paramConnectionResult, zzaf paramzzaf) {
    this(1, paramConnectionResult, paramzzaf);
  }
  
  public ConnectionResult a() {
    return this.b;
  }
  
  public zzaf b() {
    return this.c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dqn.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzbaw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */