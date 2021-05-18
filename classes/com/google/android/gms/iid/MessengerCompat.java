package com.google.android.gms.iid;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import czv;
import czw;
import czy;
import czz;

public class MessengerCompat implements ReflectedParcelable {
  public static final Parcelable.Creator<MessengerCompat> CREATOR = (Parcelable.Creator<MessengerCompat>)new czv();
  
  Messenger a;
  
  czy b;
  
  public MessengerCompat(Handler paramHandler) {
    if (Build.VERSION.SDK_INT >= 21) {
      this.a = new Messenger(paramHandler);
      return;
    } 
    this.b = (czy)new czw(this, paramHandler);
  }
  
  public MessengerCompat(IBinder paramIBinder) {
    if (Build.VERSION.SDK_INT >= 21) {
      this.a = new Messenger(paramIBinder);
      return;
    } 
    this.b = czz.a(paramIBinder);
  }
  
  public static int a(Message paramMessage) {
    return (Build.VERSION.SDK_INT >= 21) ? c(paramMessage) : paramMessage.arg2;
  }
  
  @TargetApi(21)
  private static int c(Message paramMessage) {
    return paramMessage.sendingUid;
  }
  
  public IBinder a() {
    return (this.a != null) ? this.a.getBinder() : this.b.asBinder();
  }
  
  public void b(Message paramMessage) {
    if (this.a != null) {
      this.a.send(paramMessage);
      return;
    } 
    this.b.a(paramMessage);
  }
  
  public int describeContents() {
    return 0;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject == null)
      return false; 
    try {
      return a().equals(((MessengerCompat)paramObject).a());
    } catch (ClassCastException classCastException) {
      return false;
    } 
  }
  
  public int hashCode() {
    return a().hashCode();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    if (this.a != null) {
      paramParcel.writeStrongBinder(this.a.getBinder());
      return;
    } 
    paramParcel.writeStrongBinder(this.b.asBinder());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\iid\MessengerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */