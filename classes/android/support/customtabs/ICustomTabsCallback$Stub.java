package android.support.customtabs;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ICustomTabsCallback$Stub extends Binder implements ICustomTabsCallback {
  private static final String DESCRIPTOR = "android.support.customtabs.ICustomTabsCallback";
  
  static final int TRANSACTION_extraCallback = 3;
  
  static final int TRANSACTION_onNavigationEvent = 2;
  
  public ICustomTabsCallback$Stub() {
    attachInterface(this, "android.support.customtabs.ICustomTabsCallback");
  }
  
  public static ICustomTabsCallback asInterface(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("android.support.customtabs.ICustomTabsCallback");
    return (iInterface != null && iInterface instanceof ICustomTabsCallback) ? (ICustomTabsCallback)iInterface : new ICustomTabsCallback$Stub$Proxy(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    Bundle bundle2 = null;
    Parcel parcel = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("android.support.customtabs.ICustomTabsCallback");
        return true;
      case 2:
        paramParcel1.enforceInterface("android.support.customtabs.ICustomTabsCallback");
        paramInt1 = paramParcel1.readInt();
        paramParcel2 = parcel;
        if (paramParcel1.readInt() != 0)
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); 
        onNavigationEvent(paramInt1, bundle1);
        return true;
      case 3:
        break;
    } 
    paramParcel1.enforceInterface("android.support.customtabs.ICustomTabsCallback");
    String str = paramParcel1.readString();
    Bundle bundle1 = bundle2;
    if (paramParcel1.readInt() != 0)
      bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); 
    extraCallback(str, bundle1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\ICustomTabsCallback$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */