package android.support.customtabs;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

class ICustomTabsService$Stub$Proxy implements ICustomTabsService {
  private IBinder mRemote;
  
  ICustomTabsService$Stub$Proxy(IBinder paramIBinder) {
    this.mRemote = paramIBinder;
  }
  
  public IBinder asBinder() {
    return this.mRemote;
  }
  
  public Bundle extraCommand(String paramString, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
      parcel1.writeString(paramString);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(5, parcel1, parcel2, 0);
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
    paramString = null;
    parcel2.recycle();
    parcel1.recycle();
    return (Bundle)paramString;
  }
  
  public String getInterfaceDescriptor() {
    return "android.support.customtabs.ICustomTabsService";
  }
  
  public boolean mayLaunchUrl(ICustomTabsCallback paramICustomTabsCallback, Uri paramUri, Bundle paramBundle, List<Bundle> paramList) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
      if (paramICustomTabsCallback != null) {
        IBinder iBinder = paramICustomTabsCallback.asBinder();
      } else {
        paramICustomTabsCallback = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramICustomTabsCallback);
      if (paramUri != null) {
        parcel1.writeInt(1);
        paramUri.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      parcel1.writeTypedList(paramList);
      this.mRemote.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i == 0)
        bool = false; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean newSession(ICustomTabsCallback paramICustomTabsCallback) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
      if (paramICustomTabsCallback != null) {
        IBinder iBinder = paramICustomTabsCallback.asBinder();
      } else {
        paramICustomTabsCallback = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramICustomTabsCallback);
      this.mRemote.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean updateVisuals(ICustomTabsCallback paramICustomTabsCallback, Bundle paramBundle) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
      if (paramICustomTabsCallback != null) {
        IBinder iBinder = paramICustomTabsCallback.asBinder();
      } else {
        paramICustomTabsCallback = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramICustomTabsCallback);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i == 0)
        bool = false; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean warmup(long paramLong) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
      parcel1.writeLong(paramLong);
      this.mRemote.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\ICustomTabsService$Stub$Proxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */