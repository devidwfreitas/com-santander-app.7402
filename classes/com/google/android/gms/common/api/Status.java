package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cps;
import cqg;
import cqv;
import csg;

public final class Status extends zza implements ReflectedParcelable, cqg {
  public static final Parcelable.Creator<Status> CREATOR;
  
  public static final Status a = new Status(0);
  
  public static final Status b = new Status(14);
  
  public static final Status c = new Status(8);
  
  public static final Status d = new Status(15);
  
  public static final Status e = new Status(16);
  
  public static final Status f = new Status(17);
  
  public static final Status g = new Status(18);
  
  public final int h;
  
  private final int i;
  
  private final String j;
  
  private final PendingIntent k;
  
  static {
    CREATOR = (Parcelable.Creator<Status>)new cqv();
  }
  
  public Status(int paramInt) {
    this(paramInt, null);
  }
  
  public Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent) {
    this.h = paramInt1;
    this.i = paramInt2;
    this.j = paramString;
    this.k = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString) {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent) {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  public Status a() {
    return this;
  }
  
  public void a(Activity paramActivity, int paramInt) {
    if (!d())
      return; 
    paramActivity.startIntentSenderForResult(this.k.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public PendingIntent b() {
    return this.k;
  }
  
  @Nullable
  public String c() {
    return this.j;
  }
  
  public boolean d() {
    return (this.k != null);
  }
  
  public boolean e() {
    return (this.i <= 0);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof Status) {
      paramObject = paramObject;
      if (this.h == ((Status)paramObject).h && this.i == ((Status)paramObject).i && csg.a(this.j, ((Status)paramObject).j) && csg.a(this.k, ((Status)paramObject).k))
        return true; 
    } 
    return false;
  }
  
  public boolean f() {
    return (this.i == 16);
  }
  
  public boolean g() {
    return (this.i == 14);
  }
  
  public int h() {
    return this.i;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.h), Integer.valueOf(this.i), this.j, this.k });
  }
  
  public PendingIntent i() {
    return this.k;
  }
  
  public String j() {
    return (this.j != null) ? this.j : cps.a(this.i);
  }
  
  public String toString() {
    return csg.a(this).a("statusCode", j()).a("resolution", this.k).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cqv.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\api\Status.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */