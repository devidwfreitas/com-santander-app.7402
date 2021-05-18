package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import brv;
import java.util.Date;

public class DeviceAuthDialog$RequestState implements Parcelable {
  public static final Parcelable.Creator<DeviceAuthDialog$RequestState> CREATOR = (Parcelable.Creator<DeviceAuthDialog$RequestState>)new brv();
  
  private String a;
  
  private String b;
  
  private long c;
  
  private long d;
  
  public DeviceAuthDialog$RequestState() {}
  
  public DeviceAuthDialog$RequestState(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readLong();
    this.d = paramParcel.readLong();
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(long paramLong) {
    this.c = paramLong;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(long paramLong) {
    this.d = paramLong;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public long c() {
    return this.c;
  }
  
  public boolean d() {
    return (this.d != 0L && (new Date()).getTime() - this.d - this.c * 1000L < 0L);
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeLong(this.c);
    paramParcel.writeLong(this.d);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\DeviceAuthDialog$RequestState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */