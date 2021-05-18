package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import dfw;
import dfz;

public class zzacn extends zza {
  public static final Parcelable.Creator<zzacn> CREATOR = (Parcelable.Creator<zzacn>)new dfw();
  
  public final int a;
  
  private final zzacp b;
  
  public zzacn(int paramInt, zzacp paramzzacp) {
    this.a = paramInt;
    this.b = paramzzacp;
  }
  
  private zzacn(zzacp paramzzacp) {
    this.a = 1;
    this.b = paramzzacp;
  }
  
  public static zzacn a(dfz<?, ?> paramdfz) {
    if (paramdfz instanceof zzacp)
      return new zzacn((zzacp)paramdfz); 
    throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
  }
  
  public zzacp a() {
    return this.b;
  }
  
  public dfz<?, ?> b() {
    if (this.b != null)
      return this.b; 
    throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dfw.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */