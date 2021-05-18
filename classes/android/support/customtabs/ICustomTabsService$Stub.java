package android.support.customtabs;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ICustomTabsService$Stub extends Binder implements ICustomTabsService {
  private static final String DESCRIPTOR = "android.support.customtabs.ICustomTabsService";
  
  static final int TRANSACTION_extraCommand = 5;
  
  static final int TRANSACTION_mayLaunchUrl = 4;
  
  static final int TRANSACTION_newSession = 3;
  
  static final int TRANSACTION_updateVisuals = 6;
  
  static final int TRANSACTION_warmup = 2;
  
  public ICustomTabsService$Stub() {
    attachInterface(this, "android.support.customtabs.ICustomTabsService");
  }
  
  public static ICustomTabsService asInterface(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
    return (iInterface != null && iInterface instanceof ICustomTabsService) ? (ICustomTabsService)iInterface : new ICustomTabsService$Stub$Proxy(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    Bundle bundle1;
    Uri uri;
    String str;
    Bundle bundle2;
    ICustomTabsCallback iCustomTabsCallback2;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("android.support.customtabs.ICustomTabsService");
        return true;
      case 2:
        paramParcel1.enforceInterface("android.support.customtabs.ICustomTabsService");
        bool = warmup(paramParcel1.readLong());
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
          paramParcel2.writeInt(paramInt1);
          return true;
        } 
        paramInt1 = 0;
        paramParcel2.writeInt(paramInt1);
        return true;
      case 3:
        paramParcel1.enforceInterface("android.support.customtabs.ICustomTabsService");
        bool = newSession(ICustomTabsCallback$Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 4:
        paramParcel1.enforceInterface("android.support.customtabs.ICustomTabsService");
        iCustomTabsCallback2 = ICustomTabsCallback$Stub.asInterface(paramParcel1.readStrongBinder());
        if (paramParcel1.readInt() != 0) {
          uri = (Uri)Uri.CREATOR.createFromParcel(paramParcel1);
        } else {
          uri = null;
        } 
        if (paramParcel1.readInt() != 0) {
          bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        } else {
          bundle2 = null;
        } 
        bool = mayLaunchUrl(iCustomTabsCallback2, uri, bundle2, paramParcel1.createTypedArrayList(Bundle.CREATOR));
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 5:
        paramParcel1.enforceInterface("android.support.customtabs.ICustomTabsService");
        str = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        } else {
          paramParcel1 = null;
        } 
        bundle1 = extraCommand(str, (Bundle)paramParcel1);
        paramParcel2.writeNoException();
        if (bundle1 != null) {
          paramParcel2.writeInt(1);
          bundle1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 6:
        break;
    } 
    bundle1.enforceInterface("android.support.customtabs.ICustomTabsService");
    ICustomTabsCallback iCustomTabsCallback1 = ICustomTabsCallback$Stub.asInterface(bundle1.readStrongBinder());
    if (bundle1.readInt() != 0) {
      bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
    } else {
      bundle1 = null;
    } 
    boolean bool = updateVisuals(iCustomTabsCallback1, bundle1);
    paramParcel2.writeNoException();
    paramInt1 = bool3;
    if (bool)
      paramInt1 = 1; 
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\ICustomTabsService$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */