import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class eaw extends Binder implements eav {
  public eaw() {
    attachInterface(this, "com.google.android.gms.maps.internal.IInfoWindowAdapter");
  }
  
  public static eav a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    return (iInterface != null && iInterface instanceof eav) ? (eav)iInterface : new eax(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    IBinder iBinder2;
    IBinder iBinder1;
    cwx cwx3 = null;
    Parcel parcel = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IInfoWindowAdapter");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
        cwx3 = a(eez.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        paramParcel1 = parcel;
        if (cwx3 != null)
          iBinder2 = cwx3.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 2:
        break;
    } 
    iBinder2.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    cwx cwx2 = b(eez.a(iBinder2.readStrongBinder()));
    paramParcel2.writeNoException();
    cwx cwx1 = cwx3;
    if (cwx2 != null)
      iBinder1 = cwx2.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eaw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */