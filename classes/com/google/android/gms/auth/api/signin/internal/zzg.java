package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import cof;
import cog;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzg extends zza {
  public static final Parcelable.Creator<zzg> CREATOR = (Parcelable.Creator<zzg>)new cog();
  
  public final int a;
  
  private int b;
  
  private Bundle c;
  
  public zzg(int paramInt1, int paramInt2, Bundle paramBundle) {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramBundle;
  }
  
  public zzg(cof paramcof) {
    this(1, 1, paramcof.a());
  }
  
  public int a() {
    return this.b;
  }
  
  public Bundle b() {
    return this.c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cog.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\auth\api\signin\internal\zzg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */