package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cwm;

public class zzc extends zza {
  public static final Parcelable.Creator<zzc> CREATOR = (Parcelable.Creator<zzc>)new cwm();
  
  public final String a;
  
  public final int b;
  
  public zzc(String paramString, int paramInt) {
    this.a = paramString;
    this.b = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cwm.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\zzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */