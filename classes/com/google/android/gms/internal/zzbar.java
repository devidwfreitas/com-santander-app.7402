package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import dqk;

public class zzbar extends zza {
  public static final Parcelable.Creator<zzbar> CREATOR = (Parcelable.Creator<zzbar>)new dqk();
  
  public final int a;
  
  private final Account b;
  
  private final Scope[] c;
  
  private final String d;
  
  public zzbar(int paramInt, Account paramAccount, Scope[] paramArrayOfScope, String paramString) {
    this.a = paramInt;
    this.b = paramAccount;
    this.c = paramArrayOfScope;
    this.d = paramString;
  }
  
  public Account a() {
    return this.b;
  }
  
  public Scope[] b() {
    return this.c;
  }
  
  public String c() {
    return this.d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dqk.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzbar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */