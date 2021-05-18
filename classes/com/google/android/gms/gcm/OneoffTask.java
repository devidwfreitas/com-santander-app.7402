package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import czf;
import czg;
import czk;

public class OneoffTask extends Task {
  public static final Parcelable.Creator<OneoffTask> CREATOR = (Parcelable.Creator<OneoffTask>)new czf();
  
  private final long a;
  
  private final long b;
  
  @Deprecated
  private OneoffTask(Parcel paramParcel) {
    super(paramParcel);
    this.a = paramParcel.readLong();
    this.b = paramParcel.readLong();
  }
  
  private OneoffTask(czg paramczg) {
    super((czk)paramczg);
    this.a = czg.a(paramczg);
    this.b = czg.b(paramczg);
  }
  
  public long a() {
    return this.a;
  }
  
  public void a(Bundle paramBundle) {
    super.a(paramBundle);
    paramBundle.putLong("window_start", this.a);
    paramBundle.putLong("window_end", this.b);
  }
  
  public long b() {
    return this.b;
  }
  
  public String toString() {
    String str = String.valueOf(super.toString());
    long l1 = a();
    long l2 = b();
    return (new StringBuilder(String.valueOf(str).length() + 64)).append(str).append(" windowStart=").append(l1).append(" windowEnd=").append(l2).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(this.a);
    paramParcel.writeLong(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\gcm\OneoffTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */