package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class IResultReceiver$Stub extends Binder implements IResultReceiver {
  private static final String DESCRIPTOR = "android.support.v4.os.IResultReceiver";
  
  static final int TRANSACTION_send = 1;
  
  public IResultReceiver$Stub() {
    attachInterface(this, "android.support.v4.os.IResultReceiver");
  }
  
  public static IResultReceiver asInterface(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
    return (iInterface != null && iInterface instanceof IResultReceiver) ? (IResultReceiver)iInterface : new IResultReceiver$Stub$Proxy(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("android.support.v4.os.IResultReceiver");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("android.support.v4.os.IResultReceiver");
    paramInt1 = paramParcel1.readInt();
    if (paramParcel1.readInt() != 0) {
      Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      send(paramInt1, bundle);
      return true;
    } 
    paramParcel1 = null;
    send(paramInt1, (Bundle)paramParcel1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\os\IResultReceiver$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */