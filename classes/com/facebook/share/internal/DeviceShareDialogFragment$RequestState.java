package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import bwt;

public class DeviceShareDialogFragment$RequestState implements Parcelable {
  public static final Parcelable.Creator<DeviceShareDialogFragment$RequestState> CREATOR = (Parcelable.Creator<DeviceShareDialogFragment$RequestState>)new bwt();
  
  private String a;
  
  private long b;
  
  public DeviceShareDialogFragment$RequestState() {}
  
  public DeviceShareDialogFragment$RequestState(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = paramParcel.readLong();
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(long paramLong) {
    this.b = paramLong;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public long b() {
    return this.b;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeLong(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\internal\DeviceShareDialogFragment$RequestState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */