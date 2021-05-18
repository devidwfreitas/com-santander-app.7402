package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import czi;
import czj;
import czk;

public class PeriodicTask extends Task {
  public static final Parcelable.Creator<PeriodicTask> CREATOR = (Parcelable.Creator<PeriodicTask>)new czi();
  
  protected long a = -1L;
  
  protected long b = -1L;
  
  @Deprecated
  private PeriodicTask(Parcel paramParcel) {
    super(paramParcel);
    this.a = paramParcel.readLong();
    this.b = Math.min(paramParcel.readLong(), this.a);
  }
  
  private PeriodicTask(czj paramczj) {
    super((czk)paramczj);
    this.a = czj.a(paramczj);
    this.b = Math.min(czj.b(paramczj), this.a);
  }
  
  public long a() {
    return this.a;
  }
  
  public void a(Bundle paramBundle) {
    super.a(paramBundle);
    paramBundle.putLong("period", this.a);
    paramBundle.putLong("period_flex", this.b);
  }
  
  public long b() {
    return this.b;
  }
  
  public String toString() {
    String str = String.valueOf(super.toString());
    long l1 = a();
    long l2 = b();
    return (new StringBuilder(String.valueOf(str).length() + 54)).append(str).append(" period=").append(l1).append(" flex=").append(l2).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(this.a);
    paramParcel.writeLong(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\gcm\PeriodicTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */