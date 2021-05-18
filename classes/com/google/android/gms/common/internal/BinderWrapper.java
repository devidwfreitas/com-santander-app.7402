package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import csa;

@KeepName
public final class BinderWrapper implements Parcelable {
  public static final Parcelable.Creator<BinderWrapper> CREATOR = (Parcelable.Creator<BinderWrapper>)new csa();
  
  private IBinder a = null;
  
  public BinderWrapper() {}
  
  public BinderWrapper(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  private BinderWrapper(Parcel paramParcel) {
    this.a = paramParcel.readStrongBinder();
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeStrongBinder(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\BinderWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */