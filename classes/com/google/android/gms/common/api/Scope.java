package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cqu;
import csp;

public final class Scope extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<Scope> CREATOR = (Parcelable.Creator<Scope>)new cqu();
  
  public final int a;
  
  private final String b;
  
  public Scope(int paramInt, String paramString) {
    csp.a(paramString, "scopeUri must not be null or empty");
    this.a = paramInt;
    this.b = paramString;
  }
  
  public Scope(String paramString) {
    this(1, paramString);
  }
  
  public String a() {
    return this.b;
  }
  
  public boolean equals(Object paramObject) {
    return (this == paramObject) ? true : (!(paramObject instanceof Scope) ? false : this.b.equals(((Scope)paramObject).b));
  }
  
  public int hashCode() {
    return this.b.hashCode();
  }
  
  public String toString() {
    return this.b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cqu.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\api\Scope.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */