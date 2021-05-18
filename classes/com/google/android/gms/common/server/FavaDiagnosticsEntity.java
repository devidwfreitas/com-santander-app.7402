package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cve;

public class FavaDiagnosticsEntity extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = (Parcelable.Creator<FavaDiagnosticsEntity>)new cve();
  
  public final int a;
  
  public final String b;
  
  public final int c;
  
  public FavaDiagnosticsEntity(int paramInt1, String paramString, int paramInt2) {
    this.a = paramInt1;
    this.b = paramString;
    this.c = paramInt2;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cve.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\server\FavaDiagnosticsEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */