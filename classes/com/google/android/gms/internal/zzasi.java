package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.LocationRequest;
import csg;
import djl;
import java.util.Collections;
import java.util.List;

public class zzasi extends zza {
  public static final Parcelable.Creator<zzasi> CREATOR;
  
  public static final List<zzarw> a = Collections.emptyList();
  
  public LocationRequest b;
  
  public List<zzarw> c;
  
  @Nullable
  public String d;
  
  public boolean e;
  
  public boolean f;
  
  boolean g = true;
  
  static {
    CREATOR = (Parcelable.Creator<zzasi>)new djl();
  }
  
  public zzasi(LocationRequest paramLocationRequest, List<zzarw> paramList, @Nullable String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    this.b = paramLocationRequest;
    this.c = paramList;
    this.d = paramString;
    this.e = paramBoolean1;
    this.f = paramBoolean2;
  }
  
  @Deprecated
  public static zzasi a(LocationRequest paramLocationRequest) {
    return a(null, paramLocationRequest);
  }
  
  public static zzasi a(@Nullable String paramString, LocationRequest paramLocationRequest) {
    return new zzasi(paramLocationRequest, a, paramString, false, false);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof zzasi) {
      paramObject = paramObject;
      if (csg.a(this.b, ((zzasi)paramObject).b) && csg.a(this.c, ((zzasi)paramObject).c) && csg.a(this.d, ((zzasi)paramObject).d) && this.e == ((zzasi)paramObject).e && this.f == ((zzasi)paramObject).f)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return this.b.hashCode();
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.b.toString());
    if (this.d != null)
      stringBuilder.append(" tag=").append(this.d); 
    stringBuilder.append(" hideAppOps=").append(this.e);
    stringBuilder.append(" clients=").append(this.c);
    stringBuilder.append(" forceCoarseLocation=").append(this.f);
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    djl.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzasi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */