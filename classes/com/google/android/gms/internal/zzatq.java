package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import dkm;

public final class zzatq extends zza {
  public static final Parcelable.Creator<zzatq> CREATOR = (Parcelable.Creator<zzatq>)new dkm();
  
  public final String a;
  
  public final zzato b;
  
  public final String c;
  
  public final long d;
  
  public zzatq(zzatq paramzzatq, long paramLong) {
    csp.a(paramzzatq);
    this.a = paramzzatq.a;
    this.b = paramzzatq.b;
    this.c = paramzzatq.c;
    this.d = paramLong;
  }
  
  public zzatq(String paramString1, zzato paramzzato, String paramString2, long paramLong) {
    this.a = paramString1;
    this.b = paramzzato;
    this.c = paramString2;
    this.d = paramLong;
  }
  
  public String toString() {
    String str1 = this.c;
    String str2 = this.a;
    String str3 = String.valueOf(this.b);
    return (new StringBuilder(String.valueOf(str1).length() + 21 + String.valueOf(str2).length() + String.valueOf(str3).length())).append("origin=").append(str1).append(",name=").append(str2).append(",params=").append(str3).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dkm.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzatq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */