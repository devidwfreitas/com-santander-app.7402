package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import cqg;
import dqb;

public class zzbak extends zza implements cqg {
  public static final Parcelable.Creator<zzbak> CREATOR = (Parcelable.Creator<zzbak>)new dqb();
  
  public final int a;
  
  private int b;
  
  private Intent c;
  
  public zzbak() {
    this(0, null);
  }
  
  public zzbak(int paramInt1, int paramInt2, Intent paramIntent) {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramIntent;
  }
  
  public zzbak(int paramInt, Intent paramIntent) {
    this(2, paramInt, paramIntent);
  }
  
  public Status a() {
    return (this.b == 0) ? Status.a : Status.e;
  }
  
  public int b() {
    return this.b;
  }
  
  public Intent c() {
    return this.c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dqb.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzbak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */