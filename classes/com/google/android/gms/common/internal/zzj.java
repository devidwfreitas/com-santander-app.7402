package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.zzc;
import csf;
import ctu;
import cug;
import cuh;
import cwn;
import java.util.Collection;

public class zzj extends zza {
  public static final Parcelable.Creator<zzj> CREATOR = (Parcelable.Creator<zzj>)new ctu();
  
  public final int a = 3;
  
  public final int b;
  
  public int c;
  
  public String d;
  
  public IBinder e;
  
  public Scope[] f;
  
  public Bundle g;
  
  public Account h;
  
  public zzc[] i;
  
  public zzj(int paramInt) {
    this.c = cwn.c;
    this.b = paramInt;
  }
  
  public zzj(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, Account paramAccount, zzc[] paramArrayOfzzc) {
    this.b = paramInt2;
    this.c = paramInt3;
    if ("com.google.android.gms".equals(paramString)) {
      this.d = "com.google.android.gms";
    } else {
      this.d = paramString;
    } 
    if (paramInt1 < 2) {
      this.h = a(paramIBinder);
    } else {
      this.e = paramIBinder;
      this.h = paramAccount;
    } 
    this.f = paramArrayOfScope;
    this.g = paramBundle;
    this.i = paramArrayOfzzc;
  }
  
  private Account a(IBinder paramIBinder) {
    Account account = null;
    if (paramIBinder != null)
      account = csf.a(cuh.a(paramIBinder)); 
    return account;
  }
  
  public zzj a(Account paramAccount) {
    this.h = paramAccount;
    return this;
  }
  
  public zzj a(Bundle paramBundle) {
    this.g = paramBundle;
    return this;
  }
  
  public zzj a(cug paramcug) {
    if (paramcug != null)
      this.e = paramcug.asBinder(); 
    return this;
  }
  
  public zzj a(String paramString) {
    this.d = paramString;
    return this;
  }
  
  public zzj a(Collection<Scope> paramCollection) {
    this.f = paramCollection.<Scope>toArray(new Scope[paramCollection.size()]);
    return this;
  }
  
  public zzj a(zzc[] paramArrayOfzzc) {
    this.i = paramArrayOfzzc;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    ctu.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\zzj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */