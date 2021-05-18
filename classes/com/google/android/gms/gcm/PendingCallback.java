package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import czh;

public class PendingCallback implements Parcelable, ReflectedParcelable {
  public static final Parcelable.Creator<PendingCallback> CREATOR = (Parcelable.Creator<PendingCallback>)new czh();
  
  final IBinder a;
  
  public PendingCallback(Parcel paramParcel) {
    this.a = paramParcel.readStrongBinder();
  }
  
  public IBinder a() {
    return this.a;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeStrongBinder(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\gcm\PendingCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */