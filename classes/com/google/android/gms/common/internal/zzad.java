package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.zza;
import csq;

public class zzad extends zza {
  public static final Parcelable.Creator<zzad> CREATOR = (Parcelable.Creator<zzad>)new csq();
  
  public final int a;
  
  private final Account b;
  
  private final int c;
  
  private final GoogleSignInAccount d;
  
  public zzad(int paramInt1, Account paramAccount, int paramInt2, GoogleSignInAccount paramGoogleSignInAccount) {
    this.a = paramInt1;
    this.b = paramAccount;
    this.c = paramInt2;
    this.d = paramGoogleSignInAccount;
  }
  
  public zzad(Account paramAccount, int paramInt, GoogleSignInAccount paramGoogleSignInAccount) {
    this(2, paramAccount, paramInt, paramGoogleSignInAccount);
  }
  
  public Account a() {
    return this.b;
  }
  
  public int b() {
    return this.c;
  }
  
  @Nullable
  public GoogleSignInAccount c() {
    return this.d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    csq.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\zzad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */