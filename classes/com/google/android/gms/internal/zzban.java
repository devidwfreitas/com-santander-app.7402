package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import dqd;
import java.util.List;

public class zzban extends zza {
  public static final Parcelable.Creator<zzban> CREATOR = (Parcelable.Creator<zzban>)new dqd();
  
  public final int a;
  
  public final boolean b;
  
  public final List<Scope> c;
  
  public zzban(int paramInt, boolean paramBoolean, List<Scope> paramList) {
    this.a = paramInt;
    this.b = paramBoolean;
    this.c = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dqd.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzban.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */