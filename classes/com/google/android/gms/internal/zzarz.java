package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import cqg;
import dik;

public final class zzarz extends zza implements cqg {
  public static final Parcelable.Creator<zzarz> CREATOR;
  
  public static final zzarz a = new zzarz(Status.a);
  
  private final Status b;
  
  static {
    CREATOR = (Parcelable.Creator<zzarz>)new dik();
  }
  
  public zzarz(Status paramStatus) {
    this.b = paramStatus;
  }
  
  public Status a() {
    return this.b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dik.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzarz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */