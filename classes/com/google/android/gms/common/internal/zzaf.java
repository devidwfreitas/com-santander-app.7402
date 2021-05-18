package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza;
import csr;
import cug;
import cuh;

public class zzaf extends zza {
  public static final Parcelable.Creator<zzaf> CREATOR = (Parcelable.Creator<zzaf>)new csr();
  
  public final int a;
  
  public IBinder b;
  
  private ConnectionResult c;
  
  private boolean d;
  
  private boolean e;
  
  public zzaf(int paramInt, IBinder paramIBinder, ConnectionResult paramConnectionResult, boolean paramBoolean1, boolean paramBoolean2) {
    this.a = paramInt;
    this.b = paramIBinder;
    this.c = paramConnectionResult;
    this.d = paramBoolean1;
    this.e = paramBoolean2;
  }
  
  public cug a() {
    return cuh.a(this.b);
  }
  
  public ConnectionResult b() {
    return this.c;
  }
  
  public boolean c() {
    return this.d;
  }
  
  public boolean d() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof zzaf))
        return false; 
      paramObject = paramObject;
      if (!this.c.equals(((zzaf)paramObject).c) || !a().equals(paramObject.a()))
        return false; 
    } 
    return true;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    csr.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\zzaf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */