package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import dip;
import diq;
import djm;
import dul;
import dum;
import duo;
import dup;

public class zzask extends zza {
  public static final Parcelable.Creator<zzask> CREATOR = (Parcelable.Creator<zzask>)new djm();
  
  public int a;
  
  public zzasi b;
  
  duo c;
  
  public PendingIntent d;
  
  dul e;
  
  dip f;
  
  public zzask(int paramInt, zzasi paramzzasi, IBinder paramIBinder1, PendingIntent paramPendingIntent, IBinder paramIBinder2, IBinder paramIBinder3) {
    duo duo1;
    dul dul1;
    dip dip1;
    this.a = paramInt;
    this.b = paramzzasi;
    if (paramIBinder1 == null) {
      paramzzasi = null;
    } else {
      duo1 = dup.a(paramIBinder1);
    } 
    this.c = duo1;
    this.d = paramPendingIntent;
    if (paramIBinder2 == null) {
      duo1 = null;
    } else {
      dul1 = dum.a(paramIBinder2);
    } 
    this.e = dul1;
    if (paramIBinder3 == null) {
      dul1 = dul2;
    } else {
      dip1 = diq.a(paramIBinder3);
    } 
    this.f = dip1;
  }
  
  public static zzask a(PendingIntent paramPendingIntent, @Nullable dip paramdip) {
    if (paramdip != null) {
      IBinder iBinder = paramdip.asBinder();
      return new zzask(2, null, null, paramPendingIntent, null, iBinder);
    } 
    paramdip = null;
    return new zzask(2, null, null, paramPendingIntent, null, (IBinder)paramdip);
  }
  
  public static zzask a(zzasi paramzzasi, PendingIntent paramPendingIntent, @Nullable dip paramdip) {
    if (paramdip != null) {
      IBinder iBinder = paramdip.asBinder();
      return new zzask(1, paramzzasi, null, paramPendingIntent, null, iBinder);
    } 
    paramdip = null;
    return new zzask(1, paramzzasi, null, paramPendingIntent, null, (IBinder)paramdip);
  }
  
  public static zzask a(zzasi paramzzasi, dul paramdul, @Nullable dip paramdip) {
    IBinder iBinder = paramdul.asBinder();
    if (paramdip != null) {
      IBinder iBinder1 = paramdip.asBinder();
      return new zzask(1, paramzzasi, null, null, iBinder, iBinder1);
    } 
    paramdul = null;
    return new zzask(1, paramzzasi, null, null, iBinder, (IBinder)paramdul);
  }
  
  public static zzask a(zzasi paramzzasi, duo paramduo, @Nullable dip paramdip) {
    IBinder iBinder = paramduo.asBinder();
    if (paramdip != null) {
      IBinder iBinder1 = paramdip.asBinder();
      return new zzask(1, paramzzasi, iBinder, null, null, iBinder1);
    } 
    paramduo = null;
    return new zzask(1, paramzzasi, iBinder, null, null, (IBinder)paramduo);
  }
  
  public static zzask a(dul paramdul, @Nullable dip paramdip) {
    IBinder iBinder = paramdul.asBinder();
    if (paramdip != null) {
      IBinder iBinder1 = paramdip.asBinder();
      return new zzask(2, null, null, null, iBinder, iBinder1);
    } 
    paramdul = null;
    return new zzask(2, null, null, null, iBinder, (IBinder)paramdul);
  }
  
  public static zzask a(duo paramduo, @Nullable dip paramdip) {
    IBinder iBinder = paramduo.asBinder();
    if (paramdip != null) {
      IBinder iBinder1 = paramdip.asBinder();
      return new zzask(2, null, iBinder, null, null, iBinder1);
    } 
    paramduo = null;
    return new zzask(2, null, iBinder, null, null, (IBinder)paramduo);
  }
  
  public IBinder a() {
    return (this.c == null) ? null : this.c.asBinder();
  }
  
  public IBinder b() {
    return (this.e == null) ? null : this.e.asBinder();
  }
  
  public IBinder c() {
    return (this.f == null) ? null : this.f.asBinder();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    djm.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */