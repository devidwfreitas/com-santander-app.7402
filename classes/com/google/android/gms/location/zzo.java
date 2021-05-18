package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import duu;

public final class zzo extends zza {
  public static final Parcelable.Creator<zzo> CREATOR = (Parcelable.Creator<zzo>)new duu();
  
  private final String a;
  
  private final String b;
  
  private final int c;
  
  public zzo(String paramString1, String paramString2, int paramInt) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInt;
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public int c() {
    return this.c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    duu.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\zzo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */