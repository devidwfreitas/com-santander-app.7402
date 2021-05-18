import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cup extends Binder implements cuo {
  public cup() {
    attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
  }
  
  public static cuo a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
    return (iInterface != null && iInterface instanceof cuo) ? (cuo)iInterface : new cuq(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    Bundle bundle1;
    IBinder iBinder2 = null;
    Bundle bundle2 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.internal.IGmsCallbacks");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
        paramInt1 = paramParcel1.readInt();
        iBinder2 = paramParcel1.readStrongBinder();
        if (paramParcel1.readInt() != 0)
          bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); 
        a(paramInt1, iBinder2, bundle2);
        paramParcel2.writeNoException();
        return true;
      case 2:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
    paramInt1 = paramParcel1.readInt();
    IBinder iBinder1 = iBinder2;
    if (paramParcel1.readInt() != 0)
      bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); 
    a(paramInt1, bundle1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */