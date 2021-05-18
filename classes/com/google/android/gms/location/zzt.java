package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import duy;
import java.util.Collections;
import java.util.List;

public class zzt extends zza {
  public static final Parcelable.Creator<zzt> CREATOR = (Parcelable.Creator<zzt>)new duy();
  
  private final List<String> a;
  
  private final PendingIntent b;
  
  private final String c;
  
  public zzt(@Nullable List<String> paramList, @Nullable PendingIntent paramPendingIntent, String paramString) {
    if (paramList == null) {
      paramList = Collections.emptyList();
    } else {
      paramList = Collections.unmodifiableList(paramList);
    } 
    this.a = paramList;
    this.b = paramPendingIntent;
    this.c = paramString;
  }
  
  public static zzt a(PendingIntent paramPendingIntent) {
    csp.a(paramPendingIntent, "PendingIntent can not be null.");
    return new zzt(null, paramPendingIntent, "");
  }
  
  public static zzt a(List<String> paramList) {
    csp.a(paramList, "geofence can't be null.");
    if (!paramList.isEmpty()) {
      boolean bool1 = true;
      csp.b(bool1, "Geofences must contains at least one id.");
      return new zzt(paramList, null, "");
    } 
    boolean bool = false;
    csp.b(bool, "Geofences must contains at least one id.");
    return new zzt(paramList, null, "");
  }
  
  public List<String> a() {
    return this.a;
  }
  
  public PendingIntent b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    duy.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\zzt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */