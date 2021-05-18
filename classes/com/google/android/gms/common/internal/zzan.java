package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csw;

@Deprecated
public class zzan extends zza {
  public static final Parcelable.Creator<zzan> CREATOR = (Parcelable.Creator<zzan>)new csw();
  
  public final int a;
  
  public zzan(int paramInt) {
    this.a = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    csw.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\zzan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */