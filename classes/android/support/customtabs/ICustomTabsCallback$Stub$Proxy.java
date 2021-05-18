package android.support.customtabs;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

class ICustomTabsCallback$Stub$Proxy implements ICustomTabsCallback {
  private IBinder mRemote;
  
  ICustomTabsCallback$Stub$Proxy(IBinder paramIBinder) {
    this.mRemote = paramIBinder;
  }
  
  public IBinder asBinder() {
    return this.mRemote;
  }
  
  public void extraCallback(String paramString, Bundle paramBundle) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
      parcel.writeString(paramString);
      if (paramBundle != null) {
        parcel.writeInt(1);
        paramBundle.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(3, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public String getInterfaceDescriptor() {
    return "android.support.customtabs.ICustomTabsCallback";
  }
  
  public void onNavigationEvent(int paramInt, Bundle paramBundle) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
      parcel.writeInt(paramInt);
      if (paramBundle != null) {
        parcel.writeInt(1);
        paramBundle.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(2, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\ICustomTabsCallback$Stub$Proxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */